part of 'global_setting_bloc.dart';

abstract class GlobalSettingEvent extends Equatable {
  const GlobalSettingEvent();

  @override
  List<Object> get props => [];
}

class InitEvent extends GlobalSettingEvent {}

class SetThemeEvent extends GlobalSettingEvent {
  const SetThemeEvent();
}

class MinusScaleTextEvent extends GlobalSettingEvent {
  const MinusScaleTextEvent();
}

class PlusScaleTextEvent extends GlobalSettingEvent {
  const PlusScaleTextEvent();
}


class SetUserEvent extends GlobalSettingEvent {
  final Usuario usuario;

  const SetUserEvent(this.usuario);

}


class SetScaleTextEvent extends GlobalSettingEvent {
  final double scale;
  const SetScaleTextEvent(this.scale);
}