import 'package:crypto_app/constants/app_color.dart';
import 'package:crypto_app/constants/app_fonts.dart';
import 'package:crypto_app/constants/app_styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../constants/app_size_value.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onLeadingPressed;
  final Widget? actionIcon;
  final VoidCallback? onActionPressed;
  final Color? backgroundColor;
  final Color? titleColor;
  final bool automaticallyImplyLeading;
  final Widget? bottomWidget;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onLeadingPressed,
    this.actionIcon,
    this.onActionPressed,
    this.backgroundColor,
    this.titleColor,
    this.automaticallyImplyLeading = true,
    this.bottomWidget,
  });

  @override
  Widget build(BuildContext context) {
    bool shouldShowBackButton =
        automaticallyImplyLeading && ModalRoute.of(context)?.canPop == true;

    return Column(
      children: [
        AppBar(
          surfaceTintColor: Colors.transparent,
          // shadowColor: Color.fromRGBO(0, 0, 0, 0.1),
          backgroundColor: backgroundColor ?? AppColor.background,
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
    
          leading: shouldShowBackButton
              ? GestureDetector(
                onTap: () => Get.back(),
                child: Container(
                  margin: EdgeInsets.only(left: AppMargin.hm12),
                   padding: EdgeInsets.only(left: 3),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.grey3),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColor.black,
                      size: AppSize.h16,
                    ),
                  ),
              )
              : null,
          title: Text(
            title,
            style: getLargeTextStyle(
              color: titleColor ?? AppColor.black,
              fontSize: AppFontSize.large,
            ),
          ),
          actions: actionIcon != null
              ? [
                  IconButton(
                    onPressed: onActionPressed,
                    icon: actionIcon!,
                    splashRadius: AppSize.w24,
                    padding: EdgeInsets.zero,
                  ),
                  SizedBox(width: AppSpacing.hs8),
                ]
              : null,
        ),
        // Wrap the bottom widget in a Flexible widget
        if (bottomWidget != null)
          Flexible(
            child: bottomWidget!,
          ),
      ],
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight((bottomWidget != null ? AppSize.h180 : AppSize.h80));
}
