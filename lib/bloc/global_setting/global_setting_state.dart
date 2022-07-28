part of 'global_setting_bloc.dart';

abstract class GlobalSettingState extends Equatable {
  final bool isDark;
  final double scaleText;
  final bool isLoaded;
  final Usuario? usuario;
  final String? token;
  const GlobalSettingState(this.isDark, this.scaleText, this.isLoaded, this.usuario, this.token);

  @override
  List<Object> get props => [];
}

class GlobalSettingInitial extends GlobalSettingState {
  final bool isDark;
  final double scaleText;

  const GlobalSettingInitial(this.isDark, this.scaleText,)
      : super(isDark, scaleText, true, null, null);
}

class GlobalSettingLoading extends GlobalSettingState {
  const GlobalSettingLoading() : super(false, 1.0, false, null, null);
}

class GlobalSettingLoaded extends GlobalSettingState {
  final bool isDark;
  final double scaleText;
  final Usuario? usuario;
  final String? token;

  const GlobalSettingLoaded(this.isDark, this.scaleText, this.usuario, this.token)
      : super(isDark, scaleText, true, usuario, token);
}


class GlobalSettingError extends GlobalSettingState {
  final String message;

  const GlobalSettingError(this.message) : super(false, 1.0, false, null, null);
}
