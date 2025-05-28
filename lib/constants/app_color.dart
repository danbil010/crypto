import 'package:flutter/material.dart';

class AppColor {
  static Color primary = HexColor.fromHex("#006D5A");
  static Color background = HexColor.fromHex("#F8F8F8");
  static Color coolGrey = HexColor.fromHex("#798186");
  static Color cardColor = HexColor.fromHex("#002620");
  static Color grey = HexColor.fromHex('#767676');
  static Color grey3 = HexColor.fromHex("#EBEBEB");
  static Color amber = HexColor.fromHex("#E8960F");
  static Color black = HexColor.fromHex("#1F1F1F");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color red = HexColor.fromHex("#E51211");

  static Color dartOrange = HexColor.fromHex("#F5B300");

  static Color green = HexColor.fromHex("#14C21B");
  static Color greenishTeal = HexColor.fromHex("#31B779");

  static Color employeeAndClientFieldSubtitleColor =
      HexColor.fromHex("#7B6F72");

  static Color lightGray = HexColor.fromHex("#C6C6C6");

  static Color unselectedItemAndDividerColor = HexColor.fromHex("#DADADA");

  static Color bottomNavigationBarColor = HexColor.fromHex("#D3D3D3");

  static Color blue = HexColor.fromHex("#0590FB");
  static Color dartBlue = HexColor.fromHex("#08276B");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString";
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}

Color parseColor(String? colorStr) {
  if (colorStr == null || colorStr.trim().isEmpty) {
    return AppColor.primary;
  }

  colorStr = colorStr.trim().toLowerCase();

  // ✅ Handle hex colors (e.g., "#8abb8a")
  if (colorStr.startsWith('#')) {
    try {
      return HexColor.fromHex(colorStr);
    } catch (e) {
      print("❌ Error parsing hex color: $colorStr - $e");
      return AppColor.primary;
    }
  }

  // ✅ Handle custom named colors from AppColor
  Map<String, Color> appColors = {
    "blue": AppColor.blue,
    "red": AppColor.red,
    "green": AppColor.green,
    "amber": AppColor.amber,
    "black": AppColor.black,
    "white": AppColor.white,
    "coolgrey": AppColor.coolGrey,
    "greenishteal": AppColor.greenishTeal,
    "lightgray": AppColor.lightGray,
    "unselected": AppColor.unselectedItemAndDividerColor,
    "bottomnav": AppColor.bottomNavigationBarColor,
    "dartblue": AppColor.dartBlue,
  };

  return appColors[colorStr] ?? AppColor.primary;
}
