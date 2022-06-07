import '../utils/response_service.dart';

abstract class BaseService<T> {

  Future<ResponseService<T>> loadAll();
  Future<ResponseService<T>> loadById(int id);
  Future<ResponseService<T>> search({String searchText = '', int itemsPerPage = 10, int page = 1});
  Future<ResponseService<T>> create(T item);
  Future<ResponseService<T>> update(T item);
  Future<ResponseService<T>> delete(T item);
}