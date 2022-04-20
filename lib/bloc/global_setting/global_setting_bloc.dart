import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'global_setting_event.dart';
part 'global_setting_state.dart';

class GlobalSettingBloc extends Bloc<GlobalSettingEvent, GlobalSettingState> {
  bool _theme = false;
  double _scaleText = 1.0;

  GlobalSettingBloc() : super(const GlobalSettingInitial()) {
    on<InitEvent>((event, emit) async {
      emit.call(const GlobalSettingLoading());
      try {
        final pref = await SharedPreferences.getInstance();
        _theme = pref.containsKey('global_theme')
            ? pref.getBool("global_theme") ?? false
            : false;
        _scaleText = pref.containsKey('global_scale_text')
            ? pref.getDouble("global_scale_text") ?? 1.0
            : 1.0;
        emit.call(GlobalSettingLoaded(_theme, _scaleText));
      } on Exception catch (e) {
        emit.call(GlobalSettingError(e.toString()));
      }
    });

    on<SetThemeEvent>((event, emit) async {
      emit.call(const GlobalSettingLoading());
      try {
        bool theme = !_theme;
        final pref = await SharedPreferences.getInstance();
        pref.setBool("global_theme", theme);
        _theme = theme;
        emit.call(GlobalSettingLoaded(_theme, _scaleText));
      } on Exception catch (e) {
        emit.call(GlobalSettingError(e.toString()));
      }
    });

    on<PlusScaleTextEvent>((event, emit) async {
      emit.call(const GlobalSettingLoading());
      try {
        if (_scaleText < 1.5) {
          _scaleText += 0.1;
          final pref = await SharedPreferences.getInstance();
          pref.setDouble("global_scale_text", _scaleText);
        }
        emit.call(GlobalSettingLoaded(_theme, _scaleText));
      } on Exception catch (e) {
        emit.call(GlobalSettingError(e.toString()));
      }
    });

    on<MinusScaleTextEvent>((event, emit) async {
      emit.call(const GlobalSettingLoading());
      try {
        if (_scaleText > 1) {
          _scaleText -= 0.1;
          final pref = await SharedPreferences.getInstance();
          pref.setDouble("global_scale_text", _scaleText);
        }
        emit.call(GlobalSettingLoaded(_theme, _scaleText));
      } on Exception catch (e) {
        emit.call(GlobalSettingError(e.toString()));
      }
    });
  }
}
