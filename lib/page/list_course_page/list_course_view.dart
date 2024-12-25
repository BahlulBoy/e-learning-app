import 'package:ayo_belajar/components/card/course_card.dart';
import 'package:ayo_belajar/page/list_course_page/state/list_course_cubit.dart';
import 'package:ayo_belajar/page/list_course_page/state/list_course_state.dart';
import 'package:ayo_belajar/resource/main_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ListCourseContainer extends StatefulWidget {
  const ListCourseContainer({super.key});

  @override
  State<ListCourseContainer> createState() => _ListCourseContainerState();
}

class _ListCourseContainerState extends State<ListCourseContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListCourseCubit(const ListCourseState()),
      child: const ListCourseView(),
    );
  }
}

class ListCourseView extends StatelessWidget {
  const ListCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: MainColor.primaryColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: MainColor.backgroundColor,
            size: 26,
          ),
        ),
        title: Text(
          'Matematika',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: MainColor.backgroundColor,
          ),
        ),
        actions: [
          SvgPicture.asset(
            'assets/icon/icon_biology.svg',
            colorFilter: const ColorFilter.mode(
              MainColor.strokeColor,
              BlendMode.srcIn,
            ),
            width: 28.w,
            height: 28.w,
          ),
          SizedBox(
            width: 16.w,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => CourseCard(
                    onTap: () {},
                    title: 'Dasar matematika',
                    percent: 10,
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 18.h,
                  ),
                  itemCount: 3,
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
