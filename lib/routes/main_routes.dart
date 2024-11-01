import 'package:ayo_belajar/page/login_page/login_view.dart';
import 'package:ayo_belajar/page/splash_page/splash_view.dart';
import 'package:flutter/material.dart';

class MainRoutes {
  const MainRoutes();

  Map<String, Widget Function(BuildContext)> addRoutes(BuildContext context) {
    return {
      '/': (context) => const SplashView(),
      '/login': (context) => const LoginView()
    };
  }
}
