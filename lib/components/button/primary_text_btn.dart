import 'package:ayo_belajar/resource/main_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryTextBtn extends StatelessWidget {
  const PrimaryTextBtn(
    this.text,
    this.onTap, {
    super.key,
    this.fontSize,
    this.backgroundColor,
    this.textColor,
    this.fontWeight,
    this.isLoading = false,
  });

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? backgroundColor, textColor;
  final bool isLoading;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? MainColor.primaryColor,
        ),
      ),
      child: !isLoading
          ? Text(
              text,
              style: TextStyle(
                color: textColor ?? MainColor.backgroundColor,
                fontSize: fontSize ?? 14.sp,
                fontWeight: fontWeight ?? FontWeight.w800,
              ),
            )
          : SizedBox(
              width: fontSize ?? 14.sp,
              height: fontSize ?? 14.sp,
              child: const CircularProgressIndicator(),
            ),
    );
  }
}
