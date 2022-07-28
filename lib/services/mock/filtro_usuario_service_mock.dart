import 'package:fcab_map/services/base_service.dart';
import 'package:fcab_map/utils/response_service.dart';

import '../../models/filtro_usuario.dart';


class FiltroUsuarioServiceMock extends BaseService<FiltroUsuario> {
  @override
  Future<ResponseService<FiltroUsuario>> create(FiltroUsuario item) {
    return Future.delayed(const Duration(milliseconds: 500),
        (() => ResponseSuccess(item: item, message: 'OK')));
  }

  @override
  Future<ResponseService<FiltroUsuario>> delete(FiltroUsuario item) {
    return Future.delayed(const Duration(milliseconds: 500),
        (() => ResponseSuccess(item: item, message: 'OK')));
  }

  @override
  Future<ResponseService<FiltroUsuario>> loadAll() {
    List<FiltroUsuario> items = [];

    return Future.delayed(const Duration(milliseconds: 200),
        (() => ResponseLoaded(data: items)));
  }

  @override
  Future<ResponseService<FiltroUsuario>> update(FiltroUsuario item) {
    return Future.delayed(const Duration(milliseconds: 200),
        (() => ResponseSuccess(item: item, message: 'OK')));
  }

  Future<ResponseService<FiltroUsuario>> setAcceso(FiltroUsuario item) {
    return Future.delayed(const Duration(milliseconds: 200),
        (() => ResponseSuccess(item: item, message: 'OK')));
  }
  
  @override
  Future<ResponseService<FiltroUsuario>> loadById(int id) {
    // TODO: implement loadById
    throw UnimplementedError();
  }
  
  @override
  Future<ResponseService<FiltroUsuario>> search({String searchText = '', int itemsPerPage = 10, int page = 1}) {
    // TODO: implement search
    throw UnimplementedError();
  }

  Future<ResponseService<FiltroUsuario>> loadByUser(int idUser) {
    // TODO: implement loadById
    return Future.delayed(const Duration(milliseconds: 200),
        (() => ResponseLoaded(data: listFiltroUsuarioMock)));
  }

  
}


final List<FiltroUsuario> listFiltroUsuarioMock = [
  FiltroUsuario(idFiltro: 1, nombre: 'Ver Estaciones', estado: 'A'),
  FiltroUsuario(idFiltro: 1, nombre: 'Ver Terminales', estado: 'A'),
  FiltroUsuario(idFiltro: 1, nombre: 'Ver Trenes', estado: 'A'),
  FiltroUsuario(idFiltro: 1, nombre: 'Ver Vias Libres', estado: 'A'),
  FiltroUsuario(idFiltro: 1, nombre: 'Ver Vias Cedidas', estado: 'A'),
  FiltroUsuario(idFiltro: 1, nombre: 'Ver Detectores', estado: 'A'),
  FiltroUsuario(idFiltro: 1, nombre: 'Ver Detectores', estado: 'A'),
  FiltroUsuario(idFiltro: 1, nombre: 'Ver Detectores', estado: 'A'),
];

