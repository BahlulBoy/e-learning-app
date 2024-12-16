import 'package:ayo_belajar/page/main_page/screen/course_screen.dart';
import 'package:ayo_belajar/page/main_page/screen/home_screen.dart';
import 'package:ayo_belajar/page/main_page/screen/profil_screen.dart';
import 'package:ayo_belajar/page/main_page/state/main_cubit.dart';
import 'package:ayo_belajar/page/main_page/state/main_state.dart';
import 'package:ayo_belajar/resource/main_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({super.key});

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(const MainState()),
      child: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final PageController ctrl = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.primaryColor,
      body: PageView(
        onPageChanged: (index) {
          context.read<MainCubit>().onChangeIndex(index);
        },
        controller: ctrl,
        children: const [
          HomeScreen(),
          CourseScreen(),
          ProfilScreen(),
        ],
      ),
      bottomNavigationBar: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) => BottomNavigationBar(
          backgroundColor: MainColor.secondaryBackgrounColor,
          iconSize: 28,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          selectedItemColor: MainColor.primaryWhite,
          unselectedItemColor: MainColor.thirdWhite,
          currentIndex: state.index,
          onTap: (index) {
            context.read<MainCubit>().onChangeIndex(index);
            ctrl.animateToPage(index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Pencarian',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.manage_accounts_rounded,
              ),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
