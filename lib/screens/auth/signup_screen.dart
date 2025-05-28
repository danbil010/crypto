import 'package:crypto_app/constants/app_assets.dart';
import 'package:crypto_app/constants/app_color.dart';
import 'package:crypto_app/constants/app_fonts.dart';
import 'package:crypto_app/constants/app_size_value.dart';
import 'package:crypto_app/constants/app_string.dart';
import 'package:crypto_app/constants/app_styles.dart';
import 'package:crypto_app/controller/auth_controller.dart';
import 'package:crypto_app/utils/validator.dart';
import 'package:crypto_app/widgets/custom_app_bar.dart';
import 'package:crypto_app/widgets/custom_button.dart';
import 'package:crypto_app/widgets/text_fields/custom_text_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: CustomAppBar(
        title: AppStrings.createYourAccount,
        backgroundColor: AppColor.white, 
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                    vertical: AppPadding.vp12, horizontal: AppPadding.hp20),
                child: Form(
                  key: authController.signupFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: AppSpacing.vs16,
                    children: [
                      Column(
                        spacing: AppSpacing.vs20,
                        children: [
                          Text(
                            "Let's Get You Started",
                            style: getLargeTextStyle(
                              color: AppColor.black,
                              fontSize: AppFontSize.extraLarge,
                            ),
                          ),
                          Text(
                            'Sign up to manage your crypto and convert it to fiat anytime, anywhere.',
                            textAlign: TextAlign.center,
                            style: getExtraLargeTextStyle(
                              color: AppColor.grey,
                              fontSize: AppFontSize.xLarge,
                            ),
                          ),
                        ],
                      ),
                      CustomTextField(
                        controller: authController.fullNameController,
                        labelText: 'Full Name',
                        hintText: 'Enter full name',
                        validator: Validators.validateName,
                        textInputAction: TextInputAction.next,
                        focusNode: authController.fullNameFocus,
                        nextFocusNode: authController.emailFocus,
                      ),
                      CustomTextField(
                        controller: authController.emailController,
                        labelText: 'Email',
                        hintText: 'Enter email address',
                        validator: Validators.validateEmail,
                        textInputAction: TextInputAction.next,
                        focusNode: authController.emailFocus,
                        nextFocusNode: authController.phoneFocus,
                      ),
                      CustomTextField(
                        controller: authController.phoneNumberController,
                        labelText: 'Phone Number',
                        hintText: 'Enter phone number',
                        validator: Validators.validatePhoneNumber,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.phone,
                        focusNode: authController.phoneFocus,
                        nextFocusNode: authController.passwordFocus,
                      ),
                      CustomTextField(
                        controller: authController.passwordController,
                        labelText: 'Password',
                        hintText: 'Enter password',
                        isPasswordField: true,
                        validator: Validators.validatePassword,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.next,
                        focusNode: authController.passwordFocus,
                        nextFocusNode: authController.confirmPasswordFocus,
                        
                        
                      ),
                      CustomTextField(
                        controller: authController.confirmPasswordController,
                        labelText: 'Confirm Password',
                        hintText: 'Enter confirm password',
                        isPasswordField: true,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        
                        focusNode: authController.confirmPasswordFocus,
                        validator: (value) {
                          if (value != authController.passwordController.text) {
                            return 'Passwords do not match';
                          }
                          return Validators.validatePassword(value);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Obx(
              () => Padding(
                padding: EdgeInsets.only(bottom: AppPadding.vp24),
                child: CustomButton(
                  textColor: AppColor.white,
                  isOutlined: true,
                  text: AppStrings.continueText,
                  isLoading: authController.isLoading.value,
                  onPressed: () {
                    if (authController.signupFormKey.currentState?.validate() ??
                        false) {
                      authController.signup();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
