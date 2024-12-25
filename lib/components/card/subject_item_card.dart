import 'package:ayo_belajar/resource/main_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubjectItemCard extends StatelessWidget {
  const SubjectItemCard(
    this.onTap, {
    super.key,
    required this.imageUrl,
    required this.title,
    required this.duration,
    this.isDone = false,
  });

  final String imageUrl;
  final String title;
  final String duration;
  final bool isDone;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              width: 115.w,
              height: 65.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                image: DecorationImage(
                  image: NetworkImage(
                    imageUrl,
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  SvgPicture.asset(
                    'assets/icon/icon_start.svg',
                    width: 20.w,
                    height: 20.w,
                    colorFilter: const ColorFilter.mode(
                      MainColor.primaryWhite,
                      BlendMode.srcIn,
                    ),
                  ),
                  if (isDone)
                    Positioned(
                      bottom: -5,
                      left: -5,
                      child: Container(
                        width: 14.w,
                        height: 14.w,
                        decoration: const BoxDecoration(
                          color: MainColor.darkTextColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: onTap,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: MainColor.primaryWhite,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    duration,
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: MainColor.thirdWhite,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
