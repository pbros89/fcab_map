import 'package:bloc/bloc.dart';
import 'package:fcab_map/services/mock/usuario_service_mock.dart';
import 'package:flutter/foundation.dart';

import '../../../models/usuario.dart';
import '../../../utils/response_service.dart';

part 'edit_user_event.dart';
part 'edit_user_state.dart';

class EditUserBloc extends Bloc<EditUserEvent, EditUserState> {
  final UsuarioServiceMock _usuarioService = UsuarioServiceMock();
  
  EditUserBloc(Usuario usuario) : super(EditUserInitial(usuario)) {
    on<EditUserInitEvent>(_onInit);
    on<EditUserSubmitEvent>(_onSubmit);
  }

  void _onInit(EditUserInitEvent event, Emitter<EditUserState> emit) {
    emit.call(EditUserInitial(event.usuario));
  }

  void _onSubmit(EditUserSubmitEvent event, Emitter<EditUserState> emit) async {
    emit.call(EditUserLoading());

    try {

      ResponseService<Usuario> response = await _usuarioService.update(event.usuario);

      if(response is ResponseSuccess<Usuario>) {
        emit.call(EditUserSuccess());
      }
    }catch(e){
      print(e.toString());
      emit.call(EditUserError(e.toString()));
    }
  }
}
