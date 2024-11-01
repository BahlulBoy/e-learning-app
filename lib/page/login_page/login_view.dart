import 'package:ayo_belajar/components/other/yellow_dot.dart';
import 'package:ayo_belajar/resource/main_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MainColor.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            YellowDot(
              width: 0.35.sw,
              height: 0.35.sw,
              top: -0.06.sh,
              right: -0.1.sw,
            ),
            YellowDot(
              width: 0.18.sw,
              height: 0.18.sw,
              top: -0.03.sh,
              left: -0.08.sw,
            ),
            YellowDot(
              width: 0.07.sw,
              height: 0.07.sw,
              top: 0.06.sh,
              left: 0.06.sw,
            ),
            Container(
              width: 1.sw,
              height: 1.sh,
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 0.11.sh,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.w,
                          ),
                          child: Text(
                            'Log in',
                            style: TextStyle(
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w700,
                              color: MainColor.primaryWhite,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 48.h,
                        ),
                        TextFormField(
                          style: const TextStyle(
                            color: MainColor.primaryWhite,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'your email',
                            hintStyle: TextStyle(
                              fontSize: 14.sp,
                              color: MainColor.darkTextColor,
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              fontSize: 12.sp,
                              color: MainColor.primaryWhite,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10.r,
                              ),
                              borderSide: const BorderSide(
                                color: MainColor.strokeColor,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10.r,
                              ),
                              borderSide: const BorderSide(
                                color: MainColor.strokeColor,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 8.h,
                              horizontal: 14.w,
                            ),
                            filled: true,
                            fillColor: MainColor.secondaryBackgrounColor,
                          ),
                        ),
                        SizedBox(
                          height: 38.h,
                        ),
                        TextFormField(
                          style: const TextStyle(
                            color: MainColor.primaryWhite,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            hintText: 'your password',
                            hintStyle: TextStyle(
                              fontSize: 14.sp,
                              color: MainColor.darkTextColor,
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: 12.sp,
                              color: MainColor.primaryWhite,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10.r,
                              ),
                              borderSide: const BorderSide(
                                color: MainColor.strokeColor,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10.r,
                              ),
                              borderSide: const BorderSide(
                                color: MainColor.strokeColor,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 8.h,
                              horizontal: 14.w,
                            ),
                            filled: true,
                            fillColor: MainColor.secondaryBackgrounColor,
                          ),
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 14.w,
                                      height: 14.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1.5,
                                          color: MainColor.primaryWhite,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.w,
                                    ),
                                    Text(
                                      'remember me?',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        color: MainColor.primaryWhite,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                child: Text(
                                  'forgot password?',
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: MainColor.primaryWhite,
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 58.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                MainColor.primaryColor,
                              ),
                            ),
                            child: Text(
                              'log in',
                              style: TextStyle(
                                color: MainColor.backgroundColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'dont have an account?',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: MainColor.primaryWhite,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: MainColor.primaryColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
