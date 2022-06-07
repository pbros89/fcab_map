part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  final String username;
  final String password;
  final String rePassword;
  final bool isLoading;

  const RegisterState(
      {required this.username,
      required this.password,
      required this.rePassword,
      required this.isLoading});

  @override
  List<Object> get props => [];
}

class RegisterInitialState extends RegisterState {
  const RegisterInitialState()
      : super(username: "", password: "", rePassword: "", isLoading: false);
}

class RegisterLoadingState extends RegisterState {
  const RegisterLoadingState()
      : super(username: "", password: "", rePassword: "", isLoading: true);
}

class RegisterSuccess extends RegisterState {
  const RegisterSuccess()
      : super(username: "", password: "", rePassword: "", isLoading: false);
}
