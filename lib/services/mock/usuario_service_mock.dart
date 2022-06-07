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
    List<Usuario> data = listaUsuariosMock.where((element) => element.id == id).toList();

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
          element.id.toString().toUpperCase().contains(searchText.toUpperCase()) ||
          element.email.toString().toUpperCase().contains(searchText.toUpperCase()) ||
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
      Usuario(id: 1, usuario: 'pedro.bros', email: 'pedro.bros1@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 2, usuario: 'dasdas.bros', email: 'asdas@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 3, usuario: 'pedro.asasdasbros',email: 'dds3@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 4, usuario: 'asdas.bros',email: 'peere@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 5, usuario: 'pedro.adsads',email: 'peasdasasd@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 6, usuario: 'pedro.bros',email: 'peasdasasd@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 7, usuario: 'qweqw.bros',email: 'dqweqwe@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 8, usuario: 'pedro.bros',email: 'eeasdas@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 9, usuario: 'pedro.bros',email: 'qweeqw@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 10, usuario: 'pedro.bqwros',email: 'peaddsdsdsdsddsaadsasasd@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 11, usuario: 'pedro.beqweqwros',email: 'peasdsdsdssdsdssdasasd@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 12, usuario: 'pedro.bros',email: 'peasdasasd@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 13, usuario: 'pedro.bros',email: 'aaaaaaa@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 14, usuario: 'pedrqweo.bros',email: 'ereeeeee@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 15, usuario: 'pedro.bros',email: 'rrrrrrr@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 16, usuario: 'pedroqwew.bros',email: 'ddddddd@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 17, usuario: 'eeee.bros',email: 'qqqqqqq@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 18, usuario: 'pedro.qqqq',email: 'yyyyy@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
      Usuario(id: 19, usuario: 'pedeeeero.bros',email: 'tttttt@fcab.cl', estado: 'ACTIVO', ultimoLogin: DateTime.now()),
    ];

 