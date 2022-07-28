import 'package:fcab_map/services/base_service.dart';
import 'package:fcab_map/utils/response_service.dart';

import '../../models/usuario.dart';


class UsuarioServiceMock extends BaseService<Usuario> {
  @override
  Future<ResponseService<Usuario>> create(Usuario item) {
    return Future.delayed(const Duration(milliseconds: 500),
        (() => ResponseSuccess(item: item, message: 'OK')));
  }

  @override
  Future<ResponseService<Usuario>> delete(Usuario item) {
    return Future.delayed(const Duration(milliseconds: 500),
        (() => ResponseSuccess(item: item, message: 'OK')));
  }

  @override
  Future<ResponseService<Usuario>> loadAll() {
    List<Usuario> items = [];

    return Future.delayed(const Duration(milliseconds: 500),
        (() => ResponseLoaded(data: items)));
  }

  @override
  Future<ResponseService<Usuario>> loadById(int id) {
    List<Usuario> data = listaUsuariosMock.where((element) => element.rut == id).toList();

    return Future.delayed(const Duration(milliseconds: 500),
        (() => ResponseLoaded(data: data)));
  }

  @override
  Future<ResponseService<Usuario>> search({String searchText = '', int itemsPerPage = 10, int page = 0}) async {
    List<Usuario> data = listaUsuariosMock;

    //FILTRAR COINCIDENCIA
    if(searchText.isNotEmpty) {
      data = data.where((element) => 
          searchText.trim().isNotEmpty && (
          element.rut.toString().toUpperCase().contains(searchText.toUpperCase()) ||
          element.correo.toString().toUpperCase().contains(searchText.toUpperCase()) ||
          element.cuenta.toString().toUpperCase().contains(searchText.toUpperCase()) ||
          element.nombre.toString().toUpperCase().contains(searchText.toUpperCase()) ||
          element.estado.toString().toUpperCase().contains(searchText.toUpperCase()))
        ).toList();
    }

    //PAGINAR
    //data = data.skip(page).take(itemsPerPage).toList();
    //List<Usuario> data = listaUsuariosMock;    
    
    print(data);

    return Future.delayed(
        const Duration(milliseconds: 500),
        (() => ResponseLoadedPagging(
            data: data, 
            totalItems: data.length,
            itemsPerPage: itemsPerPage,
            page: page)));
  }

  @override
  Future<ResponseService<Usuario>> update(Usuario item) {
    return Future.delayed(const Duration(milliseconds: 500),
        (() => ResponseSuccess(item: item, message: 'OK')));
  }
  
}


List<Usuario> listaUsuariosMock = [
      
    ];

 