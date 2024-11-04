import 'package:equatable/equatable.dart';

class GlobalState extends Equatable {
  const GlobalState({
    this.name,
  });

  final String? name;

  GlobalState copyWith({
    final String? name,
  }) {
    return GlobalState(
      name: name ?? this.name,
    );
  }

  @override
  List<Object?> get props => [name];
}
