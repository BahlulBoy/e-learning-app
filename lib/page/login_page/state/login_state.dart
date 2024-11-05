import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  const LoginState({
    this.emailValue,
    this.passwordValue,
    this.isPasswordHide = true,
    this.isAccountRemember = false,
  });

  final String? emailValue;
  final String? passwordValue;
  final bool isPasswordHide, isAccountRemember;

  LoginState copyWith(
      {String? emailValue,
      String? passwordValue,
      bool? isPasswordHide,
      bool? isAccountRemember}) {
    return LoginState(
      emailValue: emailValue ?? this.emailValue,
      passwordValue: passwordValue ?? this.passwordValue,
      isPasswordHide: isPasswordHide ?? this.isPasswordHide,
      isAccountRemember: isAccountRemember ?? this.isAccountRemember,
    );
  }

  @override
  List<Object?> get props => [
        emailValue,
        passwordValue,
        isPasswordHide,
        isAccountRemember,
      ];
}
