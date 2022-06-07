import 'package:fcab_map/services/base_service.dart';
import 'package:fcab_map/utils/response_service.dart';

import '../../models/usuario_acceso.dart';


class UsuarioAccesoServiceMock extends BaseService<UsuarioAcceso> {
  @override
  Future<ResponseService<UsuarioAcceso>> create(UsuarioAcceso item) {
    return Future.delayed(const Duration(milliseconds: 500),
        (() => ResponseSuccess(item: item, message: 'OK')));
  }

  @override
  Future<ResponseService<UsuarioAcceso>> delete(UsuarioAcceso item) {
    return Future.delayed(const Duration(milliseconds: 500),
        (() => ResponseSuccess(item: item, message: 'OK')));
  }

  @override
  Future<ResponseService<UsuarioAcceso>> loadAll() {
    List<UsuarioAcceso> items = [];

    return Future.delayed(const Duration(milliseconds: 200),
        (() => ResponseLoaded(data: items)));
  }

  @override
  Future<ResponseService<UsuarioAcceso>> update(UsuarioAcceso item) {
    return Future.delayed(const Duration(milliseconds: 200),
        (() => ResponseSuccess(item: item, message: 'OK')));
  }

  Future<ResponseService<UsuarioAcceso>> setAcceso(UsuarioAcceso item) {
    return Future.delayed(const Duration(milliseconds: 200),
        (() => ResponseSuccess(item: item, message: 'OK')));
  }
  
  @override
  Future<ResponseService<UsuarioAcceso>> loadById(int id) {
    // TODO: implement loadById
    throw UnimplementedError();
  }
  
  @override
  Future<ResponseService<UsuarioAcceso>> search({String searchText = '', int itemsPerPage = 10, int page = 1}) {
    // TODO: implement search
    throw UnimplementedError();
  }

  Future<ResponseService<UsuarioAcceso>> loadByUser(int idUser) {
    // TODO: implement loadById
    return Future.delayed(const Duration(milliseconds: 200),
        (() => ResponseLoaded(data: listUsuarioAccesoMock)));
  }

  
}


final List<UsuarioAcceso> listUsuarioAccesoMock = [
  UsuarioAcceso(id_usuario: 1, id_acceso: 'Estaciones', estado: 'ACTIVO'),
  UsuarioAcceso(id_usuario: 1, id_acceso: 'Terminales', estado: 'ACTIVO'),
  UsuarioAcceso(id_usuario: 1, id_acceso: 'Trenes', estado: 'ACTIVO'),
  UsuarioAcceso(id_usuario: 1, id_acceso: 'Vias Libres', estado: 'ACTIVO'),
  UsuarioAcceso(id_usuario: 1, id_acceso: 'Vias Cedidas', estado: 'ACTIVO'),
  UsuarioAcceso(id_usuario: 1, id_acceso: 'Detectores', estado: 'ACTIVO'),
];

