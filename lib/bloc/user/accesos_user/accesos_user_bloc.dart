import 'package:bloc/bloc.dart';
import 'package:fcab_map/models/usuario_acceso.dart';
import 'package:flutter/foundation.dart';

import '../../../models/usuario.dart';
import '../../../services/mock/usuario_acceso_service_mock.dart';
import '../../../utils/response_service.dart';

part 'accesos_user_event.dart';
part 'accesos_user_state.dart';

class AccesosUserBloc extends Bloc<AccesosUserEvent, AccesosUserState> {
  final UsuarioAccesoServiceMock _service = UsuarioAccesoServiceMock();
  
  AccesosUserBloc(Usuario usuario) : super(AccesosUserInitial(usuario)) {
    on<AccesosUserInitEvent>(_onInit);
    on<AccesosUserSubmitEvent>(_onSubmit);
  }

  void _onInit(AccesosUserInitEvent event, Emitter<AccesosUserState> emit) {
    emit.call(AccesosUserLoading());
  }

  void _onSubmit(AccesosUserSubmitEvent event, Emitter<AccesosUserState> emit) async {
    emit.call(AccesosUserLoading());
    try {
      ResponseService<UsuarioAcceso> resUpdate = await _service.update(event.usuarioAcceso);
      ResponseService<UsuarioAcceso> resLoad = await _service.loadByUser(event.usuarioAcceso.id_usuario);

      if(resUpdate is ResponseSuccess<UsuarioAcceso> && resLoad is ResponseLoaded<UsuarioAcceso>) {
       
        emit.call(AccesosUserSuccess(resLoad.data));
      }else{
        emit.call(const AccesosUserError('Problemas al editar acceso'));
      }
    }catch(e){
      print(e.toString());
      emit.call(AccesosUserError(e.toString()));
    }
  }

  
}
