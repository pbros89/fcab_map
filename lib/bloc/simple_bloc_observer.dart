import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    // TODO: implement onChange
    print("CHANGE: ${change.currentState}");
  }

  @override
  void onClose(BlocBase bloc) {
    // TODO: implement onClose
    print("CLOSE: ${bloc.runtimeType}");
  }

  @override
  void onCreate(BlocBase bloc) {
    // TODO: implement onCreate
    print("CREATE: ${bloc.runtimeType}");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    print("ERROR: ${bloc.runtimeType}");
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
    print("EVENT: ${bloc.runtimeType}");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
    print("TRANCITION: ${bloc.runtimeType}");
  }
}
