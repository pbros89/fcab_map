part of 'global_setting_bloc.dart';

abstract class GlobalSettingState extends Equatable {
  final bool isDark;
  final double scaleText;
  final bool isLoaded;
  const GlobalSettingState(this.isDark, this.scaleText, this.isLoaded);

  @override
  List<Object> get props => [];
}

class GlobalSettingInitial extends GlobalSettingState {
  const GlobalSettingInitial() : super(false, 1.0, true);
}

class GlobalSettingLoading extends GlobalSettingState {
  const GlobalSettingLoading() : super(false, 1.0, false);
}

class GlobalSettingLoaded extends GlobalSettingState {
  final bool isDark;
  final double scaleText;

  const GlobalSettingLoaded(this.isDark, this.scaleText)
      : super(isDark, scaleText, true);
}

class GlobalSettingError extends GlobalSettingState {
  final String message;

  const GlobalSettingError(this.message) : super(false, 1.0, false);
}
