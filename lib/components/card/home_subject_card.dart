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
      width: 110.w,
      height: 110.w,
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
            width: 40.w,
            height: 40.w,
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: MainColor.primaryWhite,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
