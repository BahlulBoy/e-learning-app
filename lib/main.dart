import 'package:ayo_belajar/global/global_cubit.dart';
import 'package:ayo_belajar/global/global_state.dart';
import 'package:ayo_belajar/resource/main_color.dart';
import 'package:ayo_belajar/routes/main_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 960),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => BlocProvider(
        create: (_) => GlobalCubit(const GlobalState(name: 'haha')),
        child: MaterialApp(
          debugShowMaterialGrid: false,
          debugShowCheckedModeBanner: false,
          title: 'AyoBelajar',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: MainColor.backgroundColor,
            ),
            useMaterial3: true,
          ),
          initialRoute: '/',
          routes: const MainRoutes().addRoutes(context),
        ),
      ),
    );
  }
}
