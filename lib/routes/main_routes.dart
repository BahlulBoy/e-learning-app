import 'package:ayo_belajar/page/login_page/login_view.dart';
import 'package:ayo_belajar/page/register_page/register_page.dart';
import 'package:ayo_belajar/page/splash_page/splash_view.dart';
import 'package:ayo_belajar/routes/list_routes.dart';
import 'package:flutter/material.dart';

class MainRoutes {
  const MainRoutes();

  Map<String, Widget Function(BuildContext)> addRoutes(BuildContext context) {
    return {
      ListRoutes.splash: (context) => const SplashView(),
      ListRoutes.login: (context) => const LoginView(),
      ListRoutes.register: (context) => const RegisterPage(),
    };
  }
}
