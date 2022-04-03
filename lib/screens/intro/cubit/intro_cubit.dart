import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'intro_state.dart';

class IntroCubit extends Cubit<IntroState> {
  IntroCubit() : super(IntroState.initial());

  void onNavigate() {
    emit(state.copyWith(isNavigate: true));
  }

  void onActiveChange() {
    int active = state.active + 1;

    emit(state.copyWith(
        active: active > state.total - 1 ? state.active : active));
  }
}
