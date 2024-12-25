import 'package:ayo_belajar/resource/main_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubjectItemTextCard extends StatelessWidget {
  const SubjectItemTextCard(
    this.onTap, {
    super.key,
    required this.title,
    this.isDone = false,
  });

  final String title;
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
            onTap: () {},
            child: Container(
              width: 115.w,
              height: 65.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: MainColor.secondaryBackgrounColor,
                border: Border.all(
                  color: MainColor.darkTextColor,
                  width: 0.5,
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  SvgPicture.asset(
                    'assets/icon/icon_note.svg',
                    width: 30.w,
                    height: 30.w,
                    colorFilter: const ColorFilter.mode(
                      MainColor.darkTextColor,
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
                    onTap: () {},
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
