import 'package:bloc/bloc.dart';
import 'package:fcab_map/services/mock/usuario_service_mock.dart';
import 'package:meta/meta.dart';

import '../../../models/usuario.dart';
import '../../../utils/response_service.dart';

part 'create_user_event.dart';
part 'create_user_state.dart';

class CreateUserBloc extends Bloc<CreateUserEvent, CreateUserState> {
  final UsuarioServiceMock _usuarioService = UsuarioServiceMock();
  
  CreateUserBloc() : super(CreateUserInitial()) {
    on<CreateUserInitEvent>(_onInit);
    on<CreateUserSubmitEvent>(_onSubmit);
  }

  void _onInit(CreateUserInitEvent event, Emitter<CreateUserState> emit) {
    emit.call(CreateUserInitial());
  }

  void _onSubmit(CreateUserSubmitEvent event, Emitter<CreateUserState> emit) async {
    emit.call(CreateUserLoading());

    try {
      final usuario = Usuario(rut: event.rut, correo: event.correo, cuenta: event.cuenta, estado: event.estado, password: event.password,  nombre: event.nombre);

      ResponseService<Usuario> response = await _usuarioService.create(usuario);

      if(response is ResponseSuccess<Usuario>) {
        emit.call(CreateUserSuccess());
      }
    }catch(e){
      print(e.toString());
      emit.call(CreateUserError(e.toString()));
    }
  }
}
