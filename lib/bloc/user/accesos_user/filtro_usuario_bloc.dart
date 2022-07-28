import 'package:bloc/bloc.dart';
import 'package:fcab_map/models/filtro_usuario.dart';
import 'package:flutter/foundation.dart';

import '../../../models/usuario.dart';
import '../../../services/mock/filtro_usuario_service_mock.dart';
import '../../../utils/response_service.dart';

part 'filtro_usuario_event.dart';
part 'filtro_usuario_state.dart';

class FiltroUsuarioBloc extends Bloc<FiltroUsuarioEvent, FiltroUsuarioState> {
  final FiltroUsuarioServiceMock _service = FiltroUsuarioServiceMock();
  
  FiltroUsuarioBloc(Usuario usuario) : super(FiltroUsuarioInitial(usuario)) {
    on<FiltroUsuarioInitEvent>(_onInit);
    on<FiltroUsuarioSubmitEvent>(_onSubmit);
  }

  void _onInit(FiltroUsuarioInitEvent event, Emitter<FiltroUsuarioState> emit) {
    emit.call(FiltroUsuarioLoading());
  }

  void _onSubmit(FiltroUsuarioSubmitEvent event, Emitter<FiltroUsuarioState> emit) async {
    emit.call(FiltroUsuarioLoading());
    try {
      ResponseService<FiltroUsuario> resUpdate = await _service.update(event.filtroUsuario);
      ResponseService<FiltroUsuario> resLoad = await _service.loadByUser(event.filtroUsuario.idFiltro);

      if(resUpdate is ResponseSuccess<FiltroUsuario> && resLoad is ResponseLoaded<FiltroUsuario>) {
       
        emit.call(FiltroUsuarioSuccess(resLoad.data));
      }else{
        emit.call(const FiltroUsuarioError('Problemas al editar acceso'));
      }
    }catch(e){
      print(e.toString());
      emit.call(FiltroUsuarioError(e.toString()));
    }
  }

  
}
