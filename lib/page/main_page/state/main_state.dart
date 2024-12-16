import 'package:equatable/equatable.dart';

class MainState extends Equatable {
  const MainState({
    this.name = "",
    this.index = 0,
  });

  final String name;
  final int index;

  MainState copyWith({
    String? name,
    int? index,
  }) =>
      MainState(
        name: name ?? this.name,
        index: index ?? this.index,
      );

  @override
  List<Object?> get props => [name, index];
}
