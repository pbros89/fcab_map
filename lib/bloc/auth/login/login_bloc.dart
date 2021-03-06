import 'package:bloc/bloc.dart';
import 'package:fcab_map/services/auth_service.dart';
import 'package:fcab_map/services/mock/usuario_service_mock.dart';
import 'package:meta/meta.dart';

import '../../../models/usuario.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final _authService = AuthService();
  
  LoginBloc() : super(LoginInitial()) {
    on<LoginInitEvent>(_onInit);
    on<LoginSubmitEvent>(_onSubmit);
  }

  void _onInit(LoginInitEvent event, Emitter<LoginState> emit) {
    emit.call(LoginInitial());
  }

  void _onSubmit(LoginSubmitEvent event, Emitter<LoginState> emit) async {
    emit.call(LoginLoading());

    try {
      //await Future.delayed(Duration(milliseconds: 500), () {});
      //var response = await _authService.login(event.username, event.password);
      final login = await _authService.login(event.username, event.password);

      if(login.success) {
        final usuario = Usuario.fromJson(login.items[0]);

        emit.call(LoginSuccess(usuario));
      }else{
         emit.call(LoginError(login.message));
      }
    }catch(e){
      print(e.toString());
      emit.call(LoginError(e.toString()));
    }
  }
}
