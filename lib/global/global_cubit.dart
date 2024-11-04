import 'package:ayo_belajar/global/global_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit(super.globalcubit);

  void changeName(String name) {
    return emit(state.copyWith(name: name));
  }
}
