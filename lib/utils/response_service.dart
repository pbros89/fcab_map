abstract class ResponseService<T> {
  final String message;
  final bool success;

  ResponseService({this.message = 'OK', this.success = true});
}

class ResponseSuccess<T> extends ResponseService<T> {
  final T item; 
  final String message;
  ResponseSuccess({required this.item, required this.message}):super(message: message);
}

class ResponseError<T> extends ResponseService<T> {
  ResponseError({required String message}):super(success: false, message: message);
}

class ResponseLoaded<T> extends ResponseService<T> {
  final List<T> data;
  ResponseLoaded({required this.data});
}

class ResponseLoadedPagging<T> extends ResponseService<T> {
  final List<T> data; 
  final int totalItems; 
  final int itemsPerPage; 
  final int page; 
  final int totalPages;
  ResponseLoadedPagging({ required this.data, this.totalItems = 0, this.itemsPerPage = 0, this.page = 0, this.totalPages = 0});
}