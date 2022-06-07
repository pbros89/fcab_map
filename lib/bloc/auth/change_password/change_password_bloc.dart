import 'package:bloc/bloc.dart';
import 'package:fcab_map/services/mock/usuario_service_mock.dart';
import 'package:meta/meta.dart';

import '../../../models/usuario.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';

class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final UsuarioServiceMock _usuarioService = UsuarioServiceMock();
  
  ChangePasswordBloc() : super(ChangePasswordInitial()) {
    on<ChangePasswordInitEvent>(_onInit);
    on<ChangePasswordSubmitEvent>(_onSubmit);
  }

  void _onInit(ChangePasswordInitEvent event, Emitter<ChangePasswordState> emit) {
    emit.call(ChangePasswordInitial());
  }

  void _onSubmit(ChangePasswordSubmitEvent event, Emitter<ChangePasswordState> emit) async {
    emit.call(ChangePasswordLoading());

    try {
      await Future.delayed(Duration(milliseconds: 500), () {});

      Usuario usuario = Usuario(id: 1, email: 'pedro.bros@fcab.cl', usuario: 'admin', estado: 'ACTIVO');

      if(event.username == 'admin') {
        emit.call(ChangePasswordSuccess(usuario));
      }else{
         emit.call(const ChangePasswordError('Usuario incorrecto'));
      }
    }catch(e){
      print(e.toString());
      emit.call(ChangePasswordError(e.toString()));
    }
  }
}
