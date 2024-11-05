import 'dart:developer';

import 'package:ayo_belajar/page/login_page/state/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(super.initialState);

  void onChangeEmail(String value) {
    return emit(state.copyWith(emailValue: value));
  }

  void onChangePassword(String value) {
    return emit(state.copyWith(passwordValue: value));
  }

  void onHidePassword() {
    return emit(state.copyWith(isPasswordHide: !state.isPasswordHide));
  }

  void onChangeRememberAccount() {
    return emit(state.copyWith(isAccountRemember: !state.isAccountRemember));
  }

  void onLogin() {
    log('email: ${state.emailValue}\npassword: ${state.passwordValue}');
  }
}
