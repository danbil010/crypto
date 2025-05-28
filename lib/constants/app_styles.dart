import 'package:crypto_app/constants/app_fonts.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight,
  );
}

// Extra Extra Large text style (Default: Black)
TextStyle getxxLargeTextStyle({
  double? fontSize,
  required Color color,
  FontWeight? fontWeight,
}) {
  return _getTextStyle(
    fontSize ?? 24.0,
    AppFontConstants.fontFamily,
    fontWeight ?? AppFontWeight.black,
    color,
  );
}

// Extra Large text style (Default: Bold)
TextStyle getExtraLargeTextStyle({
  double? fontSize,
  required Color color,
  FontWeight? fontWeight,
}) {
  return _getTextStyle(
    fontSize ?? 22.0,
    AppFontConstants.fontFamily,
    fontWeight ?? AppFontWeight.bold,
    color,
  );
}

// Large text style (Default: Semi-Bold)
TextStyle getLargeTextStyle({
  double? fontSize,
  required Color color,
  FontWeight? fontWeight,
}) {
  return _getTextStyle(
    fontSize ?? 20.0,
    AppFontConstants.fontFamily,
    fontWeight ?? AppFontWeight.semiBold,
    color,
  );
}

// Medium text style (Default: Medium)
TextStyle getMediumTextStyle({
  double? fontSize,
  required Color color,
  FontWeight? fontWeight,
}) {
  return _getTextStyle(
    fontSize ?? 16.0,
    AppFontConstants.fontFamily,
    fontWeight ?? AppFontWeight.medium,
    color,
  );
}

// Small text style (Default: Regular)
TextStyle getSmallTextStyle({
  double? fontSize,
  required Color color,
  FontWeight? fontWeight,
}) {
  return _getTextStyle(
    fontSize ?? 14.0,
    AppFontConstants.fontFamily,
    fontWeight ?? AppFontWeight.regular,
    color,
  );
}

// Extra Small text style (Default: Light)
TextStyle getExtraSmallTextStyle({
  double? fontSize,
  required Color color,
  FontWeight? fontWeight,
}) {
  return _getTextStyle(
    fontSize ?? 12.0,
    AppFontConstants.fontFamily,
    fontWeight ?? AppFontWeight.light,
    color,
  );
}
