part of 'admin_user_bloc.dart';

@immutable
abstract class AdminUserEvent {}

class InitAdminUserEvent extends AdminUserEvent {}

class SearchAdminUserEvent extends AdminUserEvent {
  final String search;
  final int itemsPerPage;
  final int page;
  SearchAdminUserEvent({this.search = '', this.itemsPerPage = 10, this.page = 1});
}