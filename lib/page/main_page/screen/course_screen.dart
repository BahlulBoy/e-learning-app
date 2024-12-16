import 'package:ayo_belajar/resource/main_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MainColor.backgroundColor,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 28.h,
                ),
                Text(
                  'Jelajahi mata pelajaran',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: MainColor.primaryWhite,
                  ),
                ),
                SizedBox(
                  height: 16.sp,
                ),
                GridView.builder(
                  itemCount: 8,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 20.w,
                    mainAxisSpacing: 12.h,
                  ),
                  itemBuilder: (context, index) => Container(
                    width: 80.w,
                    height: 80.w,
                    decoration: BoxDecoration(
                      color: MainColor.primaryColor,
                      border: Border.all(
                        color: MainColor.darkYellow,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/icon/icon_biology.svg',
                          colorFilter: const ColorFilter.mode(
                            MainColor.backgroundColor,
                            BlendMode.srcIn,
                          ),
                          width: 35.w,
                          height: 35.w,
                        ),
                        SizedBox(height: 12.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Text(
                            "Matematika",
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w800,
                              color: MainColor.backgroundColor,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
