// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'terminal_acido.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TerminalAcido _$TerminalAcidoFromJson(Map<String, dynamic> json) {
  return _TerminalAcido.fromJson(json);
}

/// @nodoc
class _$TerminalAcidoTearOff {
  const _$TerminalAcidoTearOff();

  _TerminalAcido call(
      {@JsonKey(name: 'pfk_cod_servicio') required String codServicio,
      @JsonKey(name: 'pfk_cod_terminal') required String codTerminal,
      @JsonKey(name: 'pfk_tipo_terminal') required String tipoTerminal,
      @JsonKey(name: 'pfk_cod_estanque') required String codEstanque,
      @JsonKey(name: 'pk_fecha_control') required String fechaControl,
      @JsonKey(name: 'nivel_acido') required double nivelAcido,
      @JsonKey(name: 'ton_acido') required double tonAcido}) {
    return _TerminalAcido(
      codServicio: codServicio,
      codTerminal: codTerminal,
      tipoTerminal: tipoTerminal,
      codEstanque: codEstanque,
      fechaControl: fechaControl,
      nivelAcido: nivelAcido,
      tonAcido: tonAcido,
    );
  }

  TerminalAcido fromJson(Map<String, Object?> json) {
    return TerminalAcido.fromJson(json);
  }
}

/// @nodoc
const $TerminalAcido = _$TerminalAcidoTearOff();

/// @nodoc
mixin _$TerminalAcido {
  @JsonKey(name: 'pfk_cod_servicio')
  String get codServicio => throw _privateConstructorUsedError;
  @JsonKey(name: 'pfk_cod_terminal')
  String get codTerminal => throw _privateConstructorUsedError;
  @JsonKey(name: 'pfk_tipo_terminal')
  String get tipoTerminal => throw _privateConstructorUsedError;
  @JsonKey(name: 'pfk_cod_estanque')
  String get codEstanque => throw _privateConstructorUsedError;
  @JsonKey(name: 'pk_fecha_control')
  String get fechaControl => throw _privateConstructorUsedError;
  @JsonKey(name: 'nivel_acido')
  double get nivelAcido => throw _privateConstructorUsedError;
  @JsonKey(name: 'ton_acido')
  double get tonAcido => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TerminalAcidoCopyWith<TerminalAcido> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminalAcidoCopyWith<$Res> {
  factory $TerminalAcidoCopyWith(
          TerminalAcido value, $Res Function(TerminalAcido) then) =
      _$TerminalAcidoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'pfk_cod_servicio') String codServicio,
      @JsonKey(name: 'pfk_cod_terminal') String codTerminal,
      @JsonKey(name: 'pfk_tipo_terminal') String tipoTerminal,
      @JsonKey(name: 'pfk_cod_estanque') String codEstanque,
      @JsonKey(name: 'pk_fecha_control') String fechaControl,
      @JsonKey(name: 'nivel_acido') double nivelAcido,
      @JsonKey(name: 'ton_acido') double tonAcido});
}

/// @nodoc
class _$TerminalAcidoCopyWithImpl<$Res>
    implements $TerminalAcidoCopyWith<$Res> {
  _$TerminalAcidoCopyWithImpl(this._value, this._then);

  final TerminalAcido _value;
  // ignore: unused_field
  final $Res Function(TerminalAcido) _then;

  @override
  $Res call({
    Object? codServicio = freezed,
    Object? codTerminal = freezed,
    Object? tipoTerminal = freezed,
    Object? codEstanque = freezed,
    Object? fechaControl = freezed,
    Object? nivelAcido = freezed,
    Object? tonAcido = freezed,
  }) {
    return _then(_value.copyWith(
      codServicio: codServicio == freezed
          ? _value.codServicio
          : codServicio // ignore: cast_nullable_to_non_nullable
              as String,
      codTerminal: codTerminal == freezed
          ? _value.codTerminal
          : codTerminal // ignore: cast_nullable_to_non_nullable
              as String,
      tipoTerminal: tipoTerminal == freezed
          ? _value.tipoTerminal
          : tipoTerminal // ignore: cast_nullable_to_non_nullable
              as String,
      codEstanque: codEstanque == freezed
          ? _value.codEstanque
          : codEstanque // ignore: cast_nullable_to_non_nullable
              as String,
      fechaControl: fechaControl == freezed
          ? _value.fechaControl
          : fechaControl // ignore: cast_nullable_to_non_nullable
              as String,
      nivelAcido: nivelAcido == freezed
          ? _value.nivelAcido
          : nivelAcido // ignore: cast_nullable_to_non_nullable
              as double,
      tonAcido: tonAcido == freezed
          ? _value.tonAcido
          : tonAcido // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TerminalAcidoCopyWith<$Res>
    implements $TerminalAcidoCopyWith<$Res> {
  factory _$TerminalAcidoCopyWith(
          _TerminalAcido value, $Res Function(_TerminalAcido) then) =
      __$TerminalAcidoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'pfk_cod_servicio') String codServicio,
      @JsonKey(name: 'pfk_cod_terminal') String codTerminal,
      @JsonKey(name: 'pfk_tipo_terminal') String tipoTerminal,
      @JsonKey(name: 'pfk_cod_estanque') String codEstanque,
      @JsonKey(name: 'pk_fecha_control') String fechaControl,
      @JsonKey(name: 'nivel_acido') double nivelAcido,
      @JsonKey(name: 'ton_acido') double tonAcido});
}

/// @nodoc
class __$TerminalAcidoCopyWithImpl<$Res>
    extends _$TerminalAcidoCopyWithImpl<$Res>
    implements _$TerminalAcidoCopyWith<$Res> {
  __$TerminalAcidoCopyWithImpl(
      _TerminalAcido _value, $Res Function(_TerminalAcido) _then)
      : super(_value, (v) => _then(v as _TerminalAcido));

  @override
  _TerminalAcido get _value => super._value as _TerminalAcido;

  @override
  $Res call({
    Object? codServicio = freezed,
    Object? codTerminal = freezed,
    Object? tipoTerminal = freezed,
    Object? codEstanque = freezed,
    Object? fechaControl = freezed,
    Object? nivelAcido = freezed,
    Object? tonAcido = freezed,
  }) {
    return _then(_TerminalAcido(
      codServicio: codServicio == freezed
          ? _value.codServicio
          : codServicio // ignore: cast_nullable_to_non_nullable
              as String,
      codTerminal: codTerminal == freezed
          ? _value.codTerminal
          : codTerminal // ignore: cast_nullable_to_non_nullable
              as String,
      tipoTerminal: tipoTerminal == freezed
          ? _value.tipoTerminal
          : tipoTerminal // ignore: cast_nullable_to_non_nullable
              as String,
      codEstanque: codEstanque == freezed
          ? _value.codEstanque
          : codEstanque // ignore: cast_nullable_to_non_nullable
              as String,
      fechaControl: fechaControl == freezed
          ? _value.fechaControl
          : fechaControl // ignore: cast_nullable_to_non_nullable
              as String,
      nivelAcido: nivelAcido == freezed
          ? _value.nivelAcido
          : nivelAcido // ignore: cast_nullable_to_non_nullable
              as double,
      tonAcido: tonAcido == freezed
          ? _value.tonAcido
          : tonAcido // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TerminalAcido implements _TerminalAcido {
  _$_TerminalAcido(
      {@JsonKey(name: 'pfk_cod_servicio') required this.codServicio,
      @JsonKey(name: 'pfk_cod_terminal') required this.codTerminal,
      @JsonKey(name: 'pfk_tipo_terminal') required this.tipoTerminal,
      @JsonKey(name: 'pfk_cod_estanque') required this.codEstanque,
      @JsonKey(name: 'pk_fecha_control') required this.fechaControl,
      @JsonKey(name: 'nivel_acido') required this.nivelAcido,
      @JsonKey(name: 'ton_acido') required this.tonAcido});

  factory _$_TerminalAcido.fromJson(Map<String, dynamic> json) =>
      _$$_TerminalAcidoFromJson(json);

  @override
  @JsonKey(name: 'pfk_cod_servicio')
  final String codServicio;
  @override
  @JsonKey(name: 'pfk_cod_terminal')
  final String codTerminal;
  @override
  @JsonKey(name: 'pfk_tipo_terminal')
  final String tipoTerminal;
  @override
  @JsonKey(name: 'pfk_cod_estanque')
  final String codEstanque;
  @override
  @JsonKey(name: 'pk_fecha_control')
  final String fechaControl;
  @override
  @JsonKey(name: 'nivel_acido')
  final double nivelAcido;
  @override
  @JsonKey(name: 'ton_acido')
  final double tonAcido;

  @override
  String toString() {
    return 'TerminalAcido(codServicio: $codServicio, codTerminal: $codTerminal, tipoTerminal: $tipoTerminal, codEstanque: $codEstanque, fechaControl: $fechaControl, nivelAcido: $nivelAcido, tonAcido: $tonAcido)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TerminalAcido &&
            const DeepCollectionEquality()
                .equals(other.codServicio, codServicio) &&
            const DeepCollectionEquality()
                .equals(other.codTerminal, codTerminal) &&
            const DeepCollectionEquality()
                .equals(other.tipoTerminal, tipoTerminal) &&
            const DeepCollectionEquality()
                .equals(other.codEstanque, codEstanque) &&
            const DeepCollectionEquality()
                .equals(other.fechaControl, fechaControl) &&
            const DeepCollectionEquality()
                .equals(other.nivelAcido, nivelAcido) &&
            const DeepCollectionEquality().equals(other.tonAcido, tonAcido));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(codServicio),
      const DeepCollectionEquality().hash(codTerminal),
      const DeepCollectionEquality().hash(tipoTerminal),
      const DeepCollectionEquality().hash(codEstanque),
      const DeepCollectionEquality().hash(fechaControl),
      const DeepCollectionEquality().hash(nivelAcido),
      const DeepCollectionEquality().hash(tonAcido));

  @JsonKey(ignore: true)
  @override
  _$TerminalAcidoCopyWith<_TerminalAcido> get copyWith =>
      __$TerminalAcidoCopyWithImpl<_TerminalAcido>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TerminalAcidoToJson(this);
  }
}

abstract class _TerminalAcido implements TerminalAcido {
  factory _TerminalAcido(
      {@JsonKey(name: 'pfk_cod_servicio') required String codServicio,
      @JsonKey(name: 'pfk_cod_terminal') required String codTerminal,
      @JsonKey(name: 'pfk_tipo_terminal') required String tipoTerminal,
      @JsonKey(name: 'pfk_cod_estanque') required String codEstanque,
      @JsonKey(name: 'pk_fecha_control') required String fechaControl,
      @JsonKey(name: 'nivel_acido') required double nivelAcido,
      @JsonKey(name: 'ton_acido') required double tonAcido}) = _$_TerminalAcido;

  factory _TerminalAcido.fromJson(Map<String, dynamic> json) =
      _$_TerminalAcido.fromJson;

  @override
  @JsonKey(name: 'pfk_cod_servicio')
  String get codServicio;
  @override
  @JsonKey(name: 'pfk_cod_terminal')
  String get codTerminal;
  @override
  @JsonKey(name: 'pfk_tipo_terminal')
  String get tipoTerminal;
  @override
  @JsonKey(name: 'pfk_cod_estanque')
  String get codEstanque;
  @override
  @JsonKey(name: 'pk_fecha_control')
  String get fechaControl;
  @override
  @JsonKey(name: 'nivel_acido')
  double get nivelAcido;
  @override
  @JsonKey(name: 'ton_acido')
  double get tonAcido;
  @override
  @JsonKey(ignore: true)
  _$TerminalAcidoCopyWith<_TerminalAcido> get copyWith =>
      throw _privateConstructorUsedError;
}
