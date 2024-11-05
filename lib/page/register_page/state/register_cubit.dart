import 'dart:developer';

import 'package:ayo_belajar/page/register_page/state/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(super.initialState);

  void onChangeUsername(String? value) {
    return emit(state.copyWith(username: value));
  }

  void onChangeEmail(String? value) {
    return emit(state.copyWith(email: value));
  }

  void onChangePassword(String? value) {
    return emit(state.copyWith(password: value));
  }

  void onChangePhone(String? value) {
    return emit(state.copyWith(phone: value));
  }

  void onRegister() {
    log(
      'username: ${state.username}\npassword: ${state.email}\npassword: ${state.password}\nphone: ${state.phone}',
    );
  }
}
