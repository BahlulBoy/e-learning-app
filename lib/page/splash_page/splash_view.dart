import 'dart:async';

import 'package:ayo_belajar/resource/main_color.dart';
import 'package:ayo_belajar/routes/list_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(context, ListRoutes.login);
      },
    );
    return Scaffold(
      backgroundColor: MainColor.backgroundColor,
      body: Center(
        child: Text(
          'AyoBelajar!',
          style: TextStyle(
            color: MainColor.primaryColor,
            fontSize: 28.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
