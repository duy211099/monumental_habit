import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    if (kDebugMode) {
      print(change);
    }
    super.onChange(bloc, change);
  }

  // @override
  // void onEvent(Bloc bloc, Object? event) {
  //   // print(event);
  //   super.onEvent(bloc, event);
  // }

  // @override
  // void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
  //   // print(error);
  //   super.onError(bloc, error, stackTrace);
  // }

  // @override
  // void onTransition(Bloc bloc, Transition transition) {
  //   // print(transition);
  //   super.onTransition(bloc, transition);
  // }
}
