import 'dart:io';

import 'package:crypto_app/constants/app_string.dart';
import 'package:crypto_app/local/shared_preference_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class ApiService extends GetConnect {
  ApiService() {
    httpClient.baseUrl = '${AppStrings.baseUrl}/api';

    httpClient.addRequestModifier<dynamic>((request) async {
      String? token = await SharedPreferenceHelper.getString('token');
      if (token != null && token.isNotEmpty) {
        request.headers['Authorization'] = 'Bearer $token';
      }
      return request;
    });

    httpClient.addResponseModifier<dynamic>((request, response) {
      if (kDebugMode) {
        print('Request URL: ${request.url}');
        print('Response Status Code: ${response.statusCode}');
        print('Response Body: ${response.body}');
      }

      if (response.hasError) {
        if (kDebugMode) {
          print('❌ API Error: ${response.statusCode} - ${response.body}');
        }
      }

      return response;
    });
  }

  Future<Response> getData(String endpoint) => get(endpoint);

  Future<Response> postData(String endpoint, Map<String, dynamic> body) =>
      post(endpoint, body);

  Future<Response> updateData(String endpoint, Map<String, dynamic> body) =>
      put(endpoint, body);

  Future<Response> deleteRequestWithBody(
          String url, Map<String, dynamic> body) =>
      request(url, 'DELETE', body: body);

  Future<Response> onLeaveRequestWithBody(
          String url, Map<String, dynamic> body) =>
      request(url, 'PUT', body: body);

  Future<Response> patchData(String endpoint, Map<String, dynamic> body) =>
      patch(endpoint, body);

  Future<Response> putData(String endpoint, Map<String, dynamic> body) =>
      put(endpoint, body);

  // Future<Response> uploadFile(String endpoint, File file,
  //     {String fieldName = 'file'}) async {
  //   try {
  //     File compressedFile =
  //         await compute(ImageUploaderUtils.compressAndResizeImage, file);
  //     String extension = compressedFile.path.split('.').last.toLowerCase();
  //     String mimeType;

  //     if (extension == 'jpg' || extension == 'jpeg') {
  //       mimeType = 'image/jpeg';
  //     } else if (extension == 'png') {
  //       mimeType = 'image/png';
  //     } else {
  //       return Response(
  //           statusCode: 400, body: {'error': 'Unsupported file type'});
  //     }

  //     final form = FormData({
  //       fieldName: MultipartFile(compressedFile,
  //           filename: compressedFile.path.split('/').last,
  //           contentType: mimeType),
  //     });

  //     return post(endpoint, form);
  //   } catch (e) {
  //     return Response(statusCode: 500, body: {'error': e.toString()});
  //   }
  // }

  Future<Response> uploadExcelFile(String endpoint, File file,
      {String fieldName = 'file'}) async {
    try {
      String extension = file.path.split('.').last.toLowerCase();
      String mimeType;

      if (extension == 'xls') {
        mimeType = 'application/vnd.ms-excel';
      } else if (extension == 'xlsx') {
        mimeType =
            'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';
      } else {
        return Response(
            statusCode: 400, body: {'error': 'Unsupported file type'});
      }

      final form = FormData({
        fieldName: MultipartFile(file,
            filename: file.path.split('/').last, contentType: mimeType),
      });

      return post(endpoint, form);
    } catch (e) {
      return Response(statusCode: 500, body: {'error': e.toString()});
    }
  }

  Future<Response> getDataWithBody(
          String endpoint, Map<String, dynamic> body) =>
      request(endpoint, 'GET', body: body);
}
