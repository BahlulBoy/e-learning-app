import 'package:ayo_belajar/resource/main_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubjectProgressCard extends StatelessWidget {
  const SubjectProgressCard(
    this.percentageData, {
    super.key,
    required this.title,
    required this.subject,
    this.percentageDetail = 0,
  });

  final String title, subject;
  final int percentageDetail;
  final double percentageData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: MainColor.strokeColor,
        border: Border.all(
          color: MainColor.darkTextColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: MainColor.primaryWhite,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 1,
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          subject,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            color: MainColor.darkYellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  '$percentageDetail%',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: MainColor.primaryWhite,
                  ),
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(8.r),
            ),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 8.h,
                  color: MainColor.secondaryBackgrounColor,
                ),
                FractionallySizedBox(
                  widthFactor: percentageData,
                  child: Container(
                    width: 160.w,
                    height: 8.h,
                    color: MainColor.primaryColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
