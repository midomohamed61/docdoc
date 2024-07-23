import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({super.key, this.contentPadding, this.focusedBorder, this.enabledBorder, this.hintStyle,required this.hintText, this.obscureText, this.suffixIcon, this.fillColor});
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Color? fillColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
       isDense: true,
       contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
       focusedBorder: focusedBorder ?? const OutlineInputBorder(
         borderSide: BorderSide(
           color: ColorsManager.mainBlue,
           width: 1.3
         ),
         borderRadius: BorderRadius.all(Radius.circular(16.0)),
       ),
       enabledBorder: enabledBorder ?? const OutlineInputBorder(
         borderSide: BorderSide(
           color: ColorsManager.lightGray,
           width: 1.3
         ),
         borderRadius: BorderRadius.all(Radius.circular(16.0)),
       ),
       hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
       hintText: hintText,
       suffixIcon: suffixIcon,
       fillColor: fillColor ?? ColorsManager.moreLightGray,
       filled: true,
      ),
      obscureText: obscureText ?? false,
      style: TextStyles.font15DarkBlueMedium,
    );
  }
}
