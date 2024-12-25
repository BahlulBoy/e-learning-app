import 'package:ayo_belajar/components/card/subject_item_card.dart';
import 'package:ayo_belajar/components/card/subject_item_text_card.dart';
import 'package:ayo_belajar/page/list_subject_page/state/list_subject_cubit.dart';
import 'package:ayo_belajar/page/list_subject_page/state/list_subject_state.dart';
import 'package:ayo_belajar/resource/main_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListSubjectContainer extends StatefulWidget {
  const ListSubjectContainer({super.key});

  @override
  State<ListSubjectContainer> createState() => _ListSubjectContainerState();
}

class _ListSubjectContainerState extends State<ListSubjectContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListSubjectCubit(const ListSubjectState()),
      child: const ListSubjectView(),
    );
  }
}

class ListSubjectView extends StatelessWidget {
  const ListSubjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: MainColor.backgroundColor,
        title: Text(
          'Dasar matematika',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: MainColor.primaryWhite,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: MainColor.primaryWhite,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 14.w),
            child: Text(
              '10%',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: MainColor.secondaryWhite.withOpacity(0.7),
              ),
            ),
          ),
        ],
        shape: const Border(
          bottom: BorderSide(
            color: MainColor.thirdWhite,
            width: 0.5,
          ),
        ),
        elevation: 2,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              children: [
                SizedBox(height: 8.h),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.w,
                        top: 8.h,
                        bottom: 4.h,
                      ),
                      child: Text(
                        'Bab 1',
                        style: TextStyle(
                          color: MainColor.primaryWhite,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SubjectItemCard(
                      () {},
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrP-JYudpdwAxo964j2JLBb05l9Niioc3C-g&s',
                      title: "History of math",
                      duration: "03:06",
                      isDone: true,
                    ),
                    SubjectItemCard(
                      () {},
                      imageUrl:
                          'https://news.harvard.edu/wp-content/uploads/2022/11/iStock-mathproblems.jpg',
                      title: "Applying math to daily life",
                      duration: "06:46",
                      isDone: false,
                    ),
                    SubjectItemTextCard(
                      () {},
                      title: "Mathematical symbols",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
