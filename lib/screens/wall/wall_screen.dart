import 'package:crypto_app/constants/app_assets.dart';
import 'package:crypto_app/constants/app_color.dart';
import 'package:crypto_app/constants/app_fonts.dart';
import 'package:crypto_app/constants/app_size_value.dart';
import 'package:crypto_app/constants/app_string.dart';
import 'package:crypto_app/constants/app_styles.dart';
import 'package:crypto_app/screens/auth/login_screen.dart';
import 'package:crypto_app/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth/signup_screen.dart';

class WallScreen extends StatefulWidget {
  const WallScreen({super.key});

  @override
  State<WallScreen> createState() => _WallScreenState();
}

class _WallScreenState extends State<WallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.hp24, vertical: AppPadding.vp48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: AppSpacing.vs32,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: AppSpacing.hs32,
              children: [
                Image.asset(
                  AppAssets.images.logo,
                  scale: 5,
                ),
                Text(
                  AppStrings.appName,
                  style: getMediumTextStyle(color: AppColor.black, fontSize: AppFontSize.large, fontWeight: AppFontWeight.bold),
                )
              ],
            ),
            SizedBox(height: AppSpacing.vs12,),
            Image.asset(
              AppAssets.images.cryptoImg,
              scale: 3.5,
            ),
            Text(
              AppStrings.discoverFiacto,
              textAlign: TextAlign.center,
              style: getExtraLargeTextStyle(color: AppColor.black, fontSize: AppFontSize.extraLarge),
            ),
            Text(
              AppStrings.buyStoreAndConvert,
               textAlign: TextAlign.center,
              style: getMediumTextStyle(color: AppColor.grey, fontSize: AppFontSize.extraLarge),
            ),
            SizedBox(height: AppSpacing.vs40,),
            CustomButton(
              textColor: AppColor.white,
              isOutlined: true,
              text: AppStrings.login,
              onPressed: () {
                Get.to(() => LoginScreen());
              },
            ),
            Text.rich(
              TextSpan(
                text: AppStrings.newToFiacto,
                style: TextStyle(fontSize: 16),
                children: [
                  TextSpan(
                    text: AppStrings.signup,
                    style: getMediumTextStyle(color: AppColor.primary, fontSize: AppFontSize.medium),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.to(() => SignupScreen());
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
