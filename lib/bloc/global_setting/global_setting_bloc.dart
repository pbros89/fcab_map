import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fcab_map/models/usuario.dart';
import 'package:fcab_map/services/mock/usuario_service_mock.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'global_setting_event.dart';
part 'global_setting_state.dart';

class GlobalSettingBloc extends Bloc<GlobalSettingEvent, GlobalSettingState> {
  bool _theme = false;
  double _scaleText = 1.0;
  String? _token;
  Usuario? _usuario;

  GlobalSettingBloc() : super(const GlobalSettingLoading()) {
    on<InitEvent>(_onInit);

    on<SetThemeEvent>((event, emit) async {
      emit.call(const GlobalSettingLoading());
      try {
        bool theme = !_theme;
        final pref = await SharedPreferences.getInstance();
        pref.setBool("global_theme", theme);
        _theme = theme;
        emit.call(GlobalSettingLoaded(_theme, _scaleText, _usuario, _token));
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
        emit.call(GlobalSettingLoaded(_theme, _scaleText, _usuario, _token));
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
        emit.call(GlobalSettingLoaded(_theme, _scaleText, _usuario, _token));
      } on Exception catch (e) {
        emit.call(GlobalSettingError(e.toString()));
      }
    });

    on<SetScaleTextEvent>((event, emit) async {
      emit.call(const GlobalSettingLoading());
      try {

        _scaleText -= event.scale;
        final pref = await SharedPreferences.getInstance();
        pref.setDouble("global_scale_text", _scaleText);
        
        emit.call(GlobalSettingLoaded(_theme, _scaleText, _usuario, _token));
      } on Exception catch (e) {
        emit.call(GlobalSettingError(e.toString()));
      }
    });

    on<SetUserEvent>((event, emit) async {
      emit.call(const GlobalSettingLoading());
      try {

        _usuario = event.usuario;
        final pref = await SharedPreferences.getInstance();
        pref.setInt("rut", _usuario?.rut ?? 0);
        
        emit.call(GlobalSettingLoaded(_theme, _scaleText, _usuario, _token));
      } on Exception catch (e) {
        emit.call(GlobalSettingError(e.toString()));
      }
    });
  }


  void _onInit(InitEvent event, Emitter<GlobalSettingState> emit) async {
    emit.call(const GlobalSettingLoading());
      try {
        final pref = await SharedPreferences.getInstance();

        //CARGA DE CONFIGURACIONES DE INTERFAZ
        _theme = pref.containsKey('global_theme')
            ? pref.getBool("global_theme") ?? false
            : false;
        _scaleText = pref.containsKey('global_scale_text')
            ? pref.getDouble("global_scale_text") ?? 1.0
            : 1.0;
        
        _token = pref.containsKey('accessToken')
            ? pref.getString("accessToken") ?? ''
            : '';

        //await Future.delayed(Duration(seconds: 3));

        //CARGA DE INFORMACIÓN DE USUARIO
        /*final userData = pref.containsKey('user') ?
            jsonDecode(pref.getString("global_user") ?? '') as Map<String, dynamic> : {};

        final userPermissions = pref.containsKey('global_permissions') ?
            jsonDecode(pref.getString("global_permissions") ?? '') as Map<String, dynamic> : {};*/


        emit.call(GlobalSettingInitial(_theme, _scaleText,));
      } on Exception catch (e) {
        emit.call(GlobalSettingError(e.toString()));
      }
  }
}
