import 'package:crypto_app/constants/app_color.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SnackbarHelper {
  static void showSuccess(String title) {
    Get.snackbar(
      'Success',
      title,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColor.green,
      colorText: AppColor.white,
      margin: const EdgeInsets.only(bottom: 12, left: 8, right: 12),
      duration: Duration(milliseconds: 1600),
    );
  }

  static void showError(String title) {
    Get.snackbar(
      'Error',
      title,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColor.red,
      colorText: AppColor.white,
      margin: const EdgeInsets.only(bottom: 12, left: 8, right: 12),
    );
  }

  static void showInfo(String title) {
    Get.snackbar(
      'Info',
      title,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColor.primary,
      colorText: AppColor.white,
      margin: const EdgeInsets.only(bottom: 12, left: 8, right: 12),
    );
  }
}
