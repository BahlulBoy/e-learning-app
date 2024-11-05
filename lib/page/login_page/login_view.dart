import 'package:ayo_belajar/components/input/form_input_auth.dart';
import 'package:ayo_belajar/components/other/yellow_dot.dart';
import 'package:ayo_belajar/page/login_page/state/login_cubit.dart';
import 'package:ayo_belajar/page/login_page/state/login_state.dart';
import 'package:ayo_belajar/resource/main_color.dart';
import 'package:ayo_belajar/routes/list_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginContainer extends StatefulWidget {
  const LoginContainer({super.key});

  @override
  State<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(const LoginState()),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
  });

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
                            'Login',
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
                          hintText: 'your email',
                          labelText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          onChanged: context.read<LoginCubit>().onChangeEmail,
                        ),
                        SizedBox(
                          height: 38.h,
                        ),
                        BlocBuilder<LoginCubit, LoginState>(
                          builder: (context, state) => FormInputAuth(
                            hintText: 'your password',
                            labelText: 'Password',
                            keyboardType: TextInputType.visiblePassword,
                            onChanged:
                                context.read<LoginCubit>().onChangePassword,
                            isHide: state.isPasswordHide,
                            suffix: InkWell(
                              onTap: context.read<LoginCubit>().onHidePassword,
                              highlightColor: Colors.transparent,
                              hoverColor: MainColor.backgroundColor,
                              child: BlocBuilder<LoginCubit, LoginState>(
                                builder: (context, state) => Icon(
                                  state.isPasswordHide
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: MainColor.darkTextColor,
                                ),
                              ),
                            ),
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
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: 14.w,
                                    height: 14.w,
                                    child: BlocBuilder<LoginCubit, LoginState>(
                                      builder: (context, state) => Checkbox(
                                        value: state.isAccountRemember,
                                        onChanged: (value) {
                                          context
                                              .read<LoginCubit>()
                                              .onChangeRememberAccount();
                                        },
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
                              // InkWell(
                              //   child: Text(
                              //     'forgot password?',
                              //     style: TextStyle(
                              //       fontSize: 10.sp,
                              //       color: MainColor.primaryWhite,
                              //     ),
                              //   ),
                              //   onTap: () {},
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 58.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            onPressed: context.read<LoginCubit>().onLogin,
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
                          onTap: () {
                            Navigator.pushNamed(context, ListRoutes.register);
                          },
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
