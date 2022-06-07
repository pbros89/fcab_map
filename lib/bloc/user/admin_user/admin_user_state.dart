part of 'admin_user_bloc.dart';


abstract class AdminUserState {
  final List<Usuario> usuarios;
  final String search;
  final int itemsPerPage; 
  final int page; 
  final int totalItems; 
  AdminUserState({this.usuarios = const <Usuario>[], this.itemsPerPage = 10, this.page = 0, this.totalItems = 0, this.search = ''});
}

class AdminUserInitial extends AdminUserState {
  AdminUserInitial();
}

class AdminUserLoading extends AdminUserState {
  AdminUserLoading();
}

class AdminUserLoaded extends AdminUserState {
  
  AdminUserLoaded({
    required List<Usuario> usuarios,
    required int itemsPerPage,
    required int page,
    required int totalItems, 
    required int totalPages }) : super(
      usuarios: usuarios, 
      itemsPerPage: itemsPerPage,
      page: page,
      totalItems: totalItems);
}

class AdminUserError extends AdminUserState {
  final String message;
  AdminUserError(this.message);
}