import 'package:ayo_belajar/resource/main_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MainColor.backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 28.h),
                decoration: BoxDecoration(
                  color: MainColor.primaryColor,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(18.r),
                  ),
                  border: const Border(
                    left: BorderSide(
                      color: MainColor.darkYellow,
                      width: 3,
                    ),
                    right: BorderSide(
                      color: MainColor.darkYellow,
                      width: 3,
                    ),
                    bottom: BorderSide(
                      color: MainColor.darkYellow,
                      width: 3,
                    ),
                    top: BorderSide.none,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 50.w,
                      height: 50.w,
                      decoration: const BoxDecoration(
                        color: MainColor.primaryWhite,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Ahfaitar',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w800,
                            color: MainColor.backgroundColor,
                          ),
                        ),
                        Text(
                          'ahfaitar2@gmail.com',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: MainColor.backgroundColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: MainColor.secondaryBackgrounColor,
                  border: Border.all(
                    color: MainColor.strokeColor,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(18.r),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 20.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Info personal',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w800,
                              color: MainColor.primaryWhite,
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nama Depan',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w700,
                                        color: MainColor.primaryWhite,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                      'Ahfaitar',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w600,
                                        color: MainColor.thirdWhite,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nama Belakang',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w700,
                                        color: MainColor.primaryWhite,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                      'Abdil Hakim',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w600,
                                        color: MainColor.thirdWhite,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Alamat email',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  color: MainColor.primaryWhite,
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                'ahfaitar2@gmail.com',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                  color: MainColor.thirdWhite,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nomer telepon',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  color: MainColor.primaryWhite,
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                '081233xxx',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                  color: MainColor.thirdWhite,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(14),
                        ),
                        splashColor: MainColor.primaryWhite.withOpacity(0.05),
                        child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: MainColor.strokeColor,
                                width: 3,
                              ),
                            ),
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(19),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Ubah profil',
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                              color: MainColor.primaryWhite,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: MainColor.secondaryBackgrounColor,
                  border: Border.all(
                    color: MainColor.strokeColor,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(18.r),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: MainColor.thirdWhite.withOpacity(0.05),
                        onTap: () {},
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(14),
                        ),
                        child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                            top: 12.h,
                            bottom: 12.h,
                            left: 20.w,
                          ),
                          child: Text(
                            'Tentang kami',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: MainColor.secondaryWhite,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 2.h,
                      color: MainColor.strokeColor,
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: MainColor.thirdWhite.withOpacity(0.05),
                        onTap: () {},
                        borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(14),
                        ),
                        child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                            top: 12.h,
                            bottom: 12.h,
                            left: 20.w,
                          ),
                          child: Text(
                            'Pengaturan',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: MainColor.secondaryWhite,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                decoration: BoxDecoration(
                  color: MainColor.secondaryBackgrounColor,
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(16),
                    top: Radius.circular(16),
                  ),
                  border: Border.all(
                    color: MainColor.strokeColor,
                    width: 3,
                  ),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: MainColor.thirdWhite.withOpacity(0.05),
                    onTap: () {},
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(14),
                      top: Radius.circular(14),
                    ),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 12.h,
                          bottom: 12.h,
                          left: 20.w,
                        ),
                        child: Text(
                          'Keluar',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: MainColor.secondaryWhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
