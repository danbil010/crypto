import 'package:crypto_app/constants/app_assets.dart';
import 'package:crypto_app/constants/app_color.dart';
import 'package:crypto_app/constants/app_fonts.dart';
import 'package:crypto_app/constants/app_size_value.dart';
import 'package:crypto_app/constants/app_string.dart';
import 'package:crypto_app/constants/app_styles.dart';
import 'package:crypto_app/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController(), permanent: false);

    return Scaffold(
      backgroundColor: AppColor.white,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
         
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: AppSpacing.hs24,
          children: [
            Image.asset(AppAssets.images.logo, scale: 4,   fit: BoxFit.none,),
            Text(AppStrings.appName, style: getExtraLargeTextStyle(color: AppColor.black, fontSize: AppFontSize.xxxLarge),),
          ],
        ),
      ),
    );
  }
}
