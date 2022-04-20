part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  final String username;
  final String password;
  final bool remember;
  final bool isLoading;

  const LoginState(
      {required this.username,
      required this.password,
      required this.remember,
      required this.isLoading});

  @override
  List<Object> get props => [];
}

class LoginInitialState extends LoginState {
  const LoginInitialState()
      : super(username: "", password: "", remember: false, isLoading: false);
}

class LoginLoadingState extends LoginState {
  const LoginLoadingState()
      : super(username: "", password: "", remember: false, isLoading: true);
}

class LoginSuccess extends LoginState {
  const LoginSuccess()
      : super(username: "", password: "", remember: false, isLoading: false);
}
