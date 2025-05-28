
import 'package:crypto_app/constants/app_fonts.dart';
import 'package:crypto_app/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'app_color.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'OpenSans',
      primaryColor: AppColor.primary,
      scaffoldBackgroundColor: AppColor.background,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.primary,
        foregroundColor: AppColor.white,
        elevation: 0,
        titleTextStyle: getLargeTextStyle(
          color: AppColor.white,
          fontSize: AppFontSize.large,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: getExtraLargeTextStyle(
          fontSize: AppFontSize.extraLarge,
          color: AppColor.black,
        ),
        displayMedium: getLargeTextStyle(
          color: AppColor.black,
          fontSize: AppFontSize.large,
        ),
        bodyLarge: getMediumTextStyle(
          color: AppColor.coolGrey,
          fontSize: AppFontSize.medium,
        ),
        bodyMedium: getSmallTextStyle(
            color: AppColor.coolGrey, fontSize: AppFontSize.small),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColor.primary,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primary,
          foregroundColor: AppColor.white,
          textStyle: getLargeTextStyle(
            fontSize: AppFontSize.large,
            color: AppColor.white,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColor.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColor.unselectedItemAndDividerColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColor.unselectedItemAndDividerColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColor.primary),
        ),
        hintStyle: getSmallTextStyle(
          fontSize: AppFontSize.small,
          color: AppColor.coolGrey,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColor.bottomNavigationBarColor,
        selectedItemColor: AppColor.primary,
        unselectedItemColor: AppColor.coolGrey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      dividerColor: AppColor.unselectedItemAndDividerColor,
    );
  }
}
