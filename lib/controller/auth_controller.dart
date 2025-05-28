import 'package:crypto_app/constants/app_string.dart';
import 'package:crypto_app/local/shared_preference_helper.dart';
import 'package:crypto_app/screens/auth/login_screen.dart';
import 'package:crypto_app/screens/dashboard_screen.dart';
import 'package:crypto_app/services/auth_service.dart'; // Make sure this import is correct
import 'package:crypto_app/utils/snackbar_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final fullNameController = TextEditingController();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneNumberController = TextEditingController();

  RxBool isRemember = false.obs;
  RxBool isLoading = false.obs;

  final formKey = GlobalKey<FormState>();
  final signupFormKey = GlobalKey<FormState>();

  // Add FocusNodes
  final fullNameFocus = FocusNode();
  final emailFocus = FocusNode();
   final loginEmailFocus = FocusNode();
   final loginPasswordFocus = FocusNode();
  final phoneFocus = FocusNode();
  final passwordFocus = FocusNode();
  final confirmPasswordFocus = FocusNode();

  final AuthService _authService = AuthService();

  // @override
  // void onClose() {
  //   fullNameFocus.dispose();
  //   emailFocus.dispose();
    
  //   phoneFocus.dispose();
  //   passwordFocus.dispose();
  //   confirmPasswordFocus.dispose();
  //   super.onClose();
  // }

  Future<void> login() async {
    isLoading.value = true;
    try {
      await _authService.login(
        emailController.text.trim(),
        passwordController.text.trim(),
      );

      await SharedPreferenceHelper.saveString('email', emailController.text);
      Get.offAll(() => DashboardScreen());
    } catch (e) {
      if (kDebugMode) {
        print('${AppStrings.loginError}: $e');
      }
      SnackbarHelper.showError('${AppStrings.loginFailed} $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> signup() async {
    isLoading.value = true;
    try {
      UserCredential userCredential = await _authService.signUp(
        emailController.text.trim(),
        passwordController.text.trim(),
      );

      // Get UID from userCredential
      final uid = userCredential.user?.uid;
      if (uid != null) {
        // Save user data in Firestore
        await _authService.saveUserToFirestore(
          uid: uid,
          fullName: fullNameController.text.trim(),
          email: emailController.text.trim(),
          phone: phoneNumberController.text.trim(),
        );

        Get.offAll(() => LoginScreen());
      } else {
        SnackbarHelper.showError(AppStrings.signupSucceedButUserIdNull);
      }
    } catch (e) {
      if (kDebugMode) {
        print('${AppStrings.signupError}: $e');
      }
      SnackbarHelper.showError('${AppStrings.signupFailed} $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future signout() async {
    try {
      await _authService.logout();
      await SharedPreferenceHelper.clear();
      Get.offAll(() => LoginScreen());
    } catch (e) {
      if (kDebugMode) {
        print('${AppStrings.errorDuringSignOut}: $e');
      }
      SnackbarHelper.showError('${AppStrings.errorDuringSignOut}: $e');
    }
  }
}
