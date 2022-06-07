import 'package:bloc/bloc.dart';
import 'package:fcab_map/services/mock/usuario_service_mock.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UsuarioServiceMock _usuarioService = UsuarioServiceMock();
  
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
      await Future.delayed(Duration(milliseconds: 500), () {});
      
      print(event.username + ' ' + event.password);
      if(event.username == 'admin' && event.password == 'admin') {
        emit.call(LoginSuccess());
      }else{
         emit.call(const LoginError('Usuario o contrasena incorrecta'));
      }
    }catch(e){
      print(e.toString());
      emit.call(LoginError(e.toString()));
    }
  }
}
