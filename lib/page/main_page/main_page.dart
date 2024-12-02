import 'package:ayo_belajar/components/card/home_subject_card.dart';
import 'package:ayo_belajar/components/card/subject_progress_card.dart';
import 'package:ayo_belajar/resource/main_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({super.key});

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  @override
  Widget build(BuildContext context) {
    return const MainPage();
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.primaryColor,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.w,
                    vertical: 12.h,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 46.w,
                        height: 46.w,
                        decoration: const BoxDecoration(
                          color: MainColor.primaryWhite,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'Ahfaitar',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w800,
                          color: MainColor.backgroundColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
          body: Container(
            padding: EdgeInsets.only(
              right: 18.w,
              left: 18.w,
              top: 25.w,
            ),
            decoration: BoxDecoration(
              color: MainColor.backgroundColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(34.r),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wajib kamu coba',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: MainColor.primaryWhite,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 125.w,
                    child: ListView.separated(
                      itemBuilder: (context, index) => const HomeSubjectCard(
                        'assets/icon/icon_economy.svg',
                        name: 'Ekonomi',
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 18,
                      ),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Progress kamu',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: MainColor.primaryWhite,
                        ),
                      ),
                      Text(
                        'Lihat lain',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: MainColor.primaryWhite,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => const SubjectProgressCard(
                      0.7,
                      title: 'Aljabar',
                      subject: 'Matematika',
                      percentageDetail: 70,
                    ),
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 18.h),
                    itemCount: 3,
                  ),
                  SizedBox(height: 25.w),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
