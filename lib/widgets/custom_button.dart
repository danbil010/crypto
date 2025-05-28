import 'package:crypto_app/constants/app_color.dart';
import 'package:crypto_app/constants/app_fonts.dart';
import 'package:crypto_app/constants/app_size_value.dart';
import 'package:crypto_app/constants/app_styles.dart';
import 'package:crypto_app/utils/custom_app_loader.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final bool isOutlined;
  final bool isLoading;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.width,
    this.height,
    this.borderRadius,
    this.isOutlined = false,
    this.isLoading = false,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width ?? AppSize.w900, height ?? AppSize.h56),
        fixedSize: Size(width ?? AppSize.w850, height ?? AppSize.h56),
        backgroundColor: isOutlined
            ? AppColor.primary
            : (backgroundColor ?? AppColor.primary),
        foregroundColor:
            textColor ?? (isOutlined ? AppColor.primary : AppColor.white),
        elevation: 0,
        disabledBackgroundColor: AppColor.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? AppRadius.semiSmall),
          side: BorderSide(
            color: borderColor ??
                (isOutlined ? AppColor.primary : Colors.transparent),
            width: 1,
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.hp16,
          vertical: AppPadding.vp8,
        ),
      ),
      child: isLoading
          ? CustomAppLoader(
              color: AppColor.primary,
              size: 30,
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (prefixIcon != null) ...[
                  prefixIcon!,
                  SizedBox(width: AppSpacing.hs8),
                ],
                Text(
                  text,
                  style: getLargeTextStyle(
                    color: textColor ??
                        (isOutlined ? AppColor.primary : AppColor.white),
                    fontSize: AppFontSize.large,
                  ),
                ),
                if (suffixIcon != null) ...[
                  SizedBox(width: AppSpacing.hs8),
                  suffixIcon!,
                ],
              ],
            ),
    );
  }
}
