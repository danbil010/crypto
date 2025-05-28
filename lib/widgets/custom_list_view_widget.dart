
import 'package:crypto_app/constants/app_color.dart';
import 'package:crypto_app/constants/app_fonts.dart';
import 'package:crypto_app/constants/app_size_value.dart';
import 'package:crypto_app/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CustomListViewWidget extends StatelessWidget {
  const CustomListViewWidget({super.key, this.title, this.icon, this.onTap});

  final String? title;
  final String? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: AppSize.h100,
        width: AppSize.w850,
        margin: EdgeInsets.symmetric(
            horizontal: AppMargin.hm20, vertical: AppMargin.hm4),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: const Color(0x26000000),
              blurRadius: 5,
              offset: const Offset(1, 1),
              spreadRadius: 0,
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.hp16,
          vertical: AppPadding.vp12,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: AppSpacing.vs16,
          children: [
            Row(
              spacing: AppSpacing.hs24,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: AppColor.primary, shape: BoxShape.circle),
                  child: Image.asset(
                    icon!,
                    width: AppIconSize.medium,
                    height: AppIconSize.medium,
                    color: AppColor.white,
                  ),
                ),
                Text(
                  title ?? '',
                  style: getMediumTextStyle(
                    color: AppColor.coolGrey,
                    fontSize: AppFontSize.medium,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.coolGrey,
                  size: AppIconSize.small,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
