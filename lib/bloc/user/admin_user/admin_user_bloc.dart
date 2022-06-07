import 'package:bloc/bloc.dart';
import 'package:fcab_map/models/usuario.dart';
import 'package:fcab_map/services/mock/usuario_service_mock.dart';
import 'package:meta/meta.dart';

import '../../../utils/response_service.dart';



part 'admin_user_event.dart';
part 'admin_user_state.dart';

class AdminUserBloc extends Bloc<AdminUserEvent, AdminUserState> {
  final UsuarioServiceMock _usuarioService = UsuarioServiceMock();

  AdminUserBloc() : super(AdminUserInitial()) {
    on<InitAdminUserEvent>(_onInit);
    on<SearchAdminUserEvent>(_onSearch);
  }

  void _onInit(InitAdminUserEvent event, Emitter<AdminUserState> emit) {
    emit.call(AdminUserInitial());
  }

  void _onSearch(SearchAdminUserEvent event, Emitter<AdminUserState> emit) async {
    emit.call(AdminUserLoading());

    try {
      ResponseService<Usuario> response = await _usuarioService.search(
        searchText: event.search,
        itemsPerPage: event.itemsPerPage,
        page: event.page);

      if(response is ResponseLoadedPagging<Usuario>) {
        emit.call(AdminUserLoaded(
          usuarios: response.data,
          totalItems: response.totalItems,
          itemsPerPage: response.itemsPerPage,
          page: response.page,
          totalPages: response.totalPages
        ));
      }
    }catch(e){
      print(e.toString());
      emit.call(AdminUserError('Problemas al cargar los usuarios'));
    }
    
  }
}
