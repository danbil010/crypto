
import 'package:crypto_app/constants/app_fonts.dart';
import 'package:crypto_app/constants/app_styles.dart';
import 'package:flutter/material.dart';

import '../../constants/app_color.dart';

class CustomSearchField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomSearchField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: getMediumTextStyle(
            color: AppColor.coolGrey, fontSize: AppFontSize.medium),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.unselectedItemAndDividerColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.unselectedItemAndDividerColor),
        ),
      ),
    );
  }
}
