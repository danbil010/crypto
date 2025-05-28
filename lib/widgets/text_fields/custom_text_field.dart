import 'package:crypto_app/constants/app_color.dart';
import 'package:crypto_app/constants/app_size_value.dart';
import 'package:crypto_app/constants/app_styles.dart';
import 'package:flutter/material.dart';

import '../../constants/app_fonts.dart';


class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final int minLines;
  final int maxLines;
  final bool isPasswordField;
  final bool isEnabled;
  final bool isFilled;
  final bool isRead;
  final double? labelFontSize;
  final double? width;
  final double? height;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.labelText = '',
    this.prefixIcon,
    this.minLines = 1,
    this.maxLines = 1,
    this.width,
    this.height,
    this.isEnabled = true,
    this.isFilled = false,
    this.isRead = false,
    this.suffixIcon,
    this.keyboardType,
    this.isPasswordField = false,
    this.labelFontSize,
    this.onChanged,
    this.validator,
    this.textInputAction,
    this.focusNode,
    this.nextFocusNode,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText.isNotEmpty)
          Text(
            widget.labelText,
            style: getLargeTextStyle(
              color: AppColor.primary,
              fontSize: AppFontSize.medium,
            ),
          ),
        SizedBox(height: AppSpacing.vs8),
        TextFormField(
          focusNode: widget.focusNode,
          enabled: widget.isEnabled,
          controller: widget.controller,
          onChanged: widget.onChanged,
          minLines: widget.minLines,
          maxLines: widget.isPasswordField ? 1 : widget.maxLines,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          cursorColor: AppColor.black,
          cursorHeight: AppSize.h24,
          obscureText: widget.isPasswordField && !_isPasswordVisible,
          validator: widget.validator,
          readOnly: widget.isRead,
          onFieldSubmitted: (_) {
            if (widget.nextFocusNode != null) {
              FocusScope.of(context).requestFocus(widget.nextFocusNode);
            } else {
              FocusScope.of(context).unfocus();
            }
          },
          decoration: InputDecoration(
            constraints: BoxConstraints(
              minHeight: widget.height ?? AppSize.h50,
              maxWidth: widget.width ?? AppSize.w900,
            ),
            hintText: widget.hintText,
            hintStyle: getMediumTextStyle(
              color: AppColor.coolGrey,
              fontSize: AppFontSize.medium,
            ),
            border: _buildBorder(),
            focusedBorder: _buildBorder(),
            enabledBorder: _buildBorder(),
            disabledBorder: _buildBorder(),
            contentPadding: EdgeInsets.symmetric(
              horizontal: AppPadding.hp20,
            ),
            filled: widget.isFilled,
            fillColor: widget.isFilled
                ? AppColor.unselectedItemAndDividerColor.withOpacity(0.3)
                : AppColor.white,
            prefixIcon: widget.prefixIcon != null
                ? Icon(widget.prefixIcon, color: AppColor.black)
                : null,
            suffixIcon: widget.isPasswordField
                ? IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: AppColor.black,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  )
                : widget.suffixIcon ?? const SizedBox(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        widget.isFilled ? AppRadius.small : AppRadius.tiny,
      ),
      borderSide: BorderSide(
        color: widget.isFilled ? Colors.transparent : AppColor.lightGray,
        width: 1,
      ),
    );
  }
}
