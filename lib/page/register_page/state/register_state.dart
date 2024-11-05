import 'package:equatable/equatable.dart';

class RegisterState extends Equatable {
  const RegisterState({
    this.username,
    this.email,
    this.password,
    this.phone,
  });

  final String? username, email, password, phone;

  RegisterState copyWith({
    String? username,
    String? email,
    String? password,
    String? phone,
  }) =>
      RegisterState(
        username: username ?? this.username,
        email: email ?? this.email,
        password: password ?? this.password,
        phone: phone ?? this.phone,
      );

  @override
  List<Object?> get props => [username, email, password, phone];
}
