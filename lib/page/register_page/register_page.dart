import 'package:ayo_belajar/components/input/form_input_auth.dart';
import 'package:ayo_belajar/components/other/yellow_dot.dart';
import 'package:ayo_belajar/page/register_page/state/register_cubit.dart';
import 'package:ayo_belajar/page/register_page/state/register_state.dart';
import 'package:ayo_belajar/resource/main_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterContainer extends StatefulWidget {
  const RegisterContainer({super.key});

  @override
  State<RegisterContainer> createState() => _RegisterContainer();
}

class _RegisterContainer extends State<RegisterContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(const RegisterState()),
      child: const RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
              top: -0.08.sh,
              left: 0.34.sw,
            ),
            Container(
              width: 1.sw,
              height: 1.sh,
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                            'Sign up',
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
                        FormInputAuth(
                          hintText: 'your username',
                          labelText: 'Username',
                          keyboardType: TextInputType.text,
                          onChanged:
                              context.read<RegisterCubit>().onChangeUsername,
                        ),
                        SizedBox(
                          height: 38.h,
                        ),
                        FormInputAuth(
                          hintText: 'your email',
                          labelText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          onChanged:
                              context.read<RegisterCubit>().onChangeEmail,
                        ),
                        SizedBox(
                          height: 38.h,
                        ),
                        FormInputAuth(
                          hintText: 'your password',
                          labelText: 'Password',
                          keyboardType: TextInputType.visiblePassword,
                          onChanged:
                              context.read<RegisterCubit>().onChangePassword,
                          isHide: true,
                        ),
                        SizedBox(
                          height: 38.h,
                        ),
                        FormInputAuth(
                          hintText: '08xxxxxxxx',
                          labelText: 'Phone',
                          keyboardType: TextInputType.phone,
                          onChanged:
                              context.read<RegisterCubit>().onChangePhone,
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            onPressed: context.read<RegisterCubit>().onRegister,
                            style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                MainColor.primaryColor,
                              ),
                            ),
                            child: Text(
                              'create account',
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
                          'already have an account?',
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
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Log in',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: MainColor.primaryColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
