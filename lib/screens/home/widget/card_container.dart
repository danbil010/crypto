import 'package:crypto_app/constants/app_color.dart';
import 'package:crypto_app/constants/app_fonts.dart';
import 'package:crypto_app/constants/app_size_value.dart';
import 'package:crypto_app/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key, this.icon = '', this.title = ''});

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSpacing.vs2,
      children: [
        Container(
            padding: EdgeInsets.all(AppPadding.vp10),
            decoration:
                BoxDecoration(color: AppColor.white, shape: BoxShape.circle),
            child: Image.asset(
              icon,
              scale: 3,
            )),
        Text(title, style: getMediumTextStyle(color: AppColor.white, fontSize: AppFontSize.medium),)
      ],
    );
  }
}
