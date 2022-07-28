import 'package:bloc/bloc.dart';
import 'package:fcab_map/services/auth_service.dart';
import 'package:fcab_map/services/mock/usuario_service_mock.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../models/usuario.dart';

part "clave_secret_event.dart";
part "clave_secret_state.dart";

class ClaveSecretBloc extends Bloc<ClaveSecretEvent, ClaveSecretState> {
  final _authService = AuthService();
  
  ClaveSecretBloc() : super(ClaveSecretInitial()) {
    on<ClaveSecretInitEvent>(_onInit);
    on<ClaveSecretSubmitEvent>(_onSubmit);
  }

  void _onInit(ClaveSecretInitEvent event, Emitter<ClaveSecretState> emit) {
    emit.call(ClaveSecretInitial());
  }

  void _onSubmit(ClaveSecretSubmitEvent event, Emitter<ClaveSecretState> emit) async {
    emit.call(ClaveSecretLoading());

    try {
      final response = await _authService.validarClaveSecreta(event.cuenta, event.rut, event.clave);

      if(response.success) {
        //Se almacenan localmente los tokens y rut de usuario
        final usuario = Usuario.fromJson(response.items[0]['usuario']);
        final preferences = await SharedPreferences.getInstance();
        preferences.setString('accessToken', response.items[0]['accessToken']);
        preferences.setString('refreshToken', response.items[0]['refreshToken']);
        preferences.setInt('rut', usuario.rut);

        emit.call(ClaveSecretSuccess(usuario));
      }else{
         emit.call(ClaveSecretError(response.message));
      }
    }catch(e){
      print(e.toString());
      emit.call(ClaveSecretError(e.toString()));
    }
  }

  
}
