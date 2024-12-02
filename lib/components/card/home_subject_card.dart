import 'package:ayo_belajar/resource/main_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeSubjectCard extends StatelessWidget {
  const HomeSubjectCard(
    this.asset, {
    super.key,
    required this.name,
  });

  final String asset, name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125.w,
      height: 125.w,
      decoration: BoxDecoration(
        color: MainColor.strokeColor,
        border: Border.all(
          color: MainColor.darkTextColor,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            asset,
            colorFilter: const ColorFilter.mode(
              MainColor.primaryWhite,
              BlendMode.srcIn,
            ),
            width: 45.w,
            height: 45.w,
          ),
          SizedBox(height: 18.h),
          Text(
            name,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: MainColor.primaryWhite,
            ),
          ),
        ],
      ),
    );
  }
}
