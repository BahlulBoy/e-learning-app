import 'package:ayo_belajar/resource/main_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormInputAuth extends StatelessWidget {
  const FormInputAuth({
    super.key,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.onChanged,
  });

  final String? hintText, labelText;
  final TextInputType? keyboardType;
  final void Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: MainColor.primaryWhite,
      ),
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14.sp,
          color: MainColor.darkTextColor,
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 12.sp,
          color: MainColor.primaryWhite,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10.r,
          ),
          borderSide: const BorderSide(
            color: MainColor.strokeColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10.r,
          ),
          borderSide: const BorderSide(
            color: MainColor.strokeColor,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 14.w,
        ),
        filled: true,
        fillColor: MainColor.secondaryBackgrounColor,
      ),
      onChanged: onChanged,
    );
  }
}
