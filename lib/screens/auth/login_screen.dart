import 'package:crypto_app/constants/app_assets.dart';
import 'package:crypto_app/constants/app_color.dart';
import 'package:crypto_app/constants/app_fonts.dart';
import 'package:crypto_app/constants/app_size_value.dart';
import 'package:crypto_app/constants/app_string.dart';
import 'package:crypto_app/constants/app_styles.dart';
import 'package:crypto_app/controller/auth_controller.dart';
import 'package:crypto_app/screens/auth/signup_screen.dart';
import 'package:crypto_app/utils/validator.dart';
import 'package:crypto_app/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/text_fields/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final authController = Get.put(AuthController());

  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: AppColor.white,
    body: SafeArea(
      child: Form(
        key: authController.formKey,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                    vertical: AppPadding.vp8, horizontal: AppPadding.hp20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpacing.vs12,
                  children: [
                    Image.asset(
                      AppAssets.images.logo,
                      height: AppSize.h130,
                      width: AppSize.w140,
                      
                    ),
                  
                    Text(
                      AppStrings.getStartedNow,
                      style: getLargeTextStyle(
                        color: AppColor.black,
                        fontSize: AppFontSize.extraLarge,
                      ),
                    ),
                    Text(
                      AppStrings.createAnAccountOrLogin,
                      style: getMediumTextStyle(
                        color: AppColor.grey,
                        fontSize: AppFontSize.medium,
                      ),
                    ),
                    SizedBox(height: AppSpacing.vs12),

                    // Email Field
                    CustomTextField(
                      controller: authController.emailController,
                      labelText: 'Email',
                      hintText: 'Enter email address',
                      validator: Validators.validateEmail,
                      textInputAction: TextInputAction.next,
                      focusNode: authController.loginEmailFocus,
                      nextFocusNode: authController.passwordFocus,
                    ),

                    // Password Field
                    CustomTextField(
                      controller: authController.passwordController,
                      labelText: 'Password',
                      hintText: 'Enter password',
                      isPasswordField: true,
                      validator: Validators.validatePassword,
                      textInputAction: TextInputAction.done,
                      focusNode: authController.loginPasswordFocus,
                    ),

                 

                    // Remember Me
                    Row(
                      children: [
                        Obx(() => GestureDetector(
                              onTap: () {
                                authController.isRemember.value =
                                    !authController.isRemember.value;
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                height: AppSize.h32,
                                width: AppSize.w72,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(AppRadius.tiny),
                                  border: Border.all(
                                    color: authController.isRemember.value
                                        ? AppColor.primary
                                        : AppColor
                                            .unselectedItemAndDividerColor,
                                  ),
                                  color: authController.isRemember.value
                                      ? AppColor.primary
                                      : AppColor.white,
                                ),
                                child: authController.isRemember.value
                                    ? Icon(Icons.check,
                                        size: 16, color: AppColor.white)
                                    : null,
                              ),
                            )),
                        SizedBox(width: AppSpacing.hs16),
                        Text(
                          AppStrings.rememberMe,
                          style: getMediumTextStyle(
                            color: AppColor.black,
                            fontSize: AppFontSize.medium,
                          ),
                        ),
                        Spacer(),
                        Text(
                          AppStrings.forgotPassword,
                          style: getMediumTextStyle(
                            color: AppColor.primary,
                            fontSize: AppFontSize.medium,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: AppSpacing.vs24),

                    Obx(
                      () => CustomButton(
                        textColor: AppColor.white,
                        isOutlined: true,
                        text: AppStrings.login,
                        isLoading: authController.isLoading.value,
                        onPressed: () {
                          if (authController.formKey.currentState
                                  ?.validate() ??
                              false) {
                            authController.login();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ✅ Move this to the bottom
            Padding(
              padding: EdgeInsets.only(bottom: AppSpacing.vs24),
              child: Text.rich(
                TextSpan(
                  text: AppStrings.doNotHaveAnAccount,
                  style: TextStyle(fontSize: 16),
                  children: [
                    TextSpan(
                      text: AppStrings.createAccount,
                      style: getMediumTextStyle(
                          color: AppColor.primary,
                          fontSize: AppFontSize.large),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(() => SignupScreen());
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

}
