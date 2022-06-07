// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contador_loco.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContadorLoco _$ContadorLocoFromJson(Map<String, dynamic> json) {
  return _ContadorLoco.fromJson(json);
}

/// @nodoc
class _$ContadorLocoTearOff {
  const _$ContadorLocoTearOff();

  _ContadorLoco call(
      {@JsonKey(name: 'estacion', defaultValue: '') required String estacion,
      @JsonKey(name: 'linea', defaultValue: '') required String linea,
      @JsonKey(name: 'color', defaultValue: '') required String color,
      @JsonKey(name: 'cant', defaultValue: 0) required int cant,
      @JsonKey(name: 'mar_mante', defaultValue: '') required String marMante}) {
    return _ContadorLoco(
      estacion: estacion,
      linea: linea,
      color: color,
      cant: cant,
      marMante: marMante,
    );
  }

  ContadorLoco fromJson(Map<String, Object?> json) {
    return ContadorLoco.fromJson(json);
  }
}

/// @nodoc
const $ContadorLoco = _$ContadorLocoTearOff();

/// @nodoc
mixin _$ContadorLoco {
  @JsonKey(name: 'estacion', defaultValue: '')
  String get estacion => throw _privateConstructorUsedError;
  @JsonKey(name: 'linea', defaultValue: '')
  String get linea => throw _privateConstructorUsedError;
  @JsonKey(name: 'color', defaultValue: '')
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'cant', defaultValue: 0)
  int get cant => throw _privateConstructorUsedError;
  @JsonKey(name: 'mar_mante', defaultValue: '')
  String get marMante => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContadorLocoCopyWith<ContadorLoco> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContadorLocoCopyWith<$Res> {
  factory $ContadorLocoCopyWith(
          ContadorLoco value, $Res Function(ContadorLoco) then) =
      _$ContadorLocoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'estacion', defaultValue: '') String estacion,
      @JsonKey(name: 'linea', defaultValue: '') String linea,
      @JsonKey(name: 'color', defaultValue: '') String color,
      @JsonKey(name: 'cant', defaultValue: 0) int cant,
      @JsonKey(name: 'mar_mante', defaultValue: '') String marMante});
}

/// @nodoc
class _$ContadorLocoCopyWithImpl<$Res> implements $ContadorLocoCopyWith<$Res> {
  _$ContadorLocoCopyWithImpl(this._value, this._then);

  final ContadorLoco _value;
  // ignore: unused_field
  final $Res Function(ContadorLoco) _then;

  @override
  $Res call({
    Object? estacion = freezed,
    Object? linea = freezed,
    Object? color = freezed,
    Object? cant = freezed,
    Object? marMante = freezed,
  }) {
    return _then(_value.copyWith(
      estacion: estacion == freezed
          ? _value.estacion
          : estacion // ignore: cast_nullable_to_non_nullable
              as String,
      linea: linea == freezed
          ? _value.linea
          : linea // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      cant: cant == freezed
          ? _value.cant
          : cant // ignore: cast_nullable_to_non_nullable
              as int,
      marMante: marMante == freezed
          ? _value.marMante
          : marMante // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ContadorLocoCopyWith<$Res>
    implements $ContadorLocoCopyWith<$Res> {
  factory _$ContadorLocoCopyWith(
          _ContadorLoco value, $Res Function(_ContadorLoco) then) =
      __$ContadorLocoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'estacion', defaultValue: '') String estacion,
      @JsonKey(name: 'linea', defaultValue: '') String linea,
      @JsonKey(name: 'color', defaultValue: '') String color,
      @JsonKey(name: 'cant', defaultValue: 0) int cant,
      @JsonKey(name: 'mar_mante', defaultValue: '') String marMante});
}

/// @nodoc
class __$ContadorLocoCopyWithImpl<$Res> extends _$ContadorLocoCopyWithImpl<$Res>
    implements _$ContadorLocoCopyWith<$Res> {
  __$ContadorLocoCopyWithImpl(
      _ContadorLoco _value, $Res Function(_ContadorLoco) _then)
      : super(_value, (v) => _then(v as _ContadorLoco));

  @override
  _ContadorLoco get _value => super._value as _ContadorLoco;

  @override
  $Res call({
    Object? estacion = freezed,
    Object? linea = freezed,
    Object? color = freezed,
    Object? cant = freezed,
    Object? marMante = freezed,
  }) {
    return _then(_ContadorLoco(
      estacion: estacion == freezed
          ? _value.estacion
          : estacion // ignore: cast_nullable_to_non_nullable
              as String,
      linea: linea == freezed
          ? _value.linea
          : linea // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      cant: cant == freezed
          ? _value.cant
          : cant // ignore: cast_nullable_to_non_nullable
              as int,
      marMante: marMante == freezed
          ? _value.marMante
          : marMante // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContadorLoco implements _ContadorLoco {
  _$_ContadorLoco(
      {@JsonKey(name: 'estacion', defaultValue: '') required this.estacion,
      @JsonKey(name: 'linea', defaultValue: '') required this.linea,
      @JsonKey(name: 'color', defaultValue: '') required this.color,
      @JsonKey(name: 'cant', defaultValue: 0) required this.cant,
      @JsonKey(name: 'mar_mante', defaultValue: '') required this.marMante});

  factory _$_ContadorLoco.fromJson(Map<String, dynamic> json) =>
      _$$_ContadorLocoFromJson(json);

  @override
  @JsonKey(name: 'estacion', defaultValue: '')
  final String estacion;
  @override
  @JsonKey(name: 'linea', defaultValue: '')
  final String linea;
  @override
  @JsonKey(name: 'color', defaultValue: '')
  final String color;
  @override
  @JsonKey(name: 'cant', defaultValue: 0)
  final int cant;
  @override
  @JsonKey(name: 'mar_mante', defaultValue: '')
  final String marMante;

  @override
  String toString() {
    return 'ContadorLoco(estacion: $estacion, linea: $linea, color: $color, cant: $cant, marMante: $marMante)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContadorLoco &&
            const DeepCollectionEquality().equals(other.estacion, estacion) &&
            const DeepCollectionEquality().equals(other.linea, linea) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.cant, cant) &&
            const DeepCollectionEquality().equals(other.marMante, marMante));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(estacion),
      const DeepCollectionEquality().hash(linea),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(cant),
      const DeepCollectionEquality().hash(marMante));

  @JsonKey(ignore: true)
  @override
  _$ContadorLocoCopyWith<_ContadorLoco> get copyWith =>
      __$ContadorLocoCopyWithImpl<_ContadorLoco>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContadorLocoToJson(this);
  }
}

abstract class _ContadorLoco implements ContadorLoco {
  factory _ContadorLoco(
      {@JsonKey(name: 'estacion', defaultValue: '')
          required String estacion,
      @JsonKey(name: 'linea', defaultValue: '')
          required String linea,
      @JsonKey(name: 'color', defaultValue: '')
          required String color,
      @JsonKey(name: 'cant', defaultValue: 0)
          required int cant,
      @JsonKey(name: 'mar_mante', defaultValue: '')
          required String marMante}) = _$_ContadorLoco;

  factory _ContadorLoco.fromJson(Map<String, dynamic> json) =
      _$_ContadorLoco.fromJson;

  @override
  @JsonKey(name: 'estacion', defaultValue: '')
  String get estacion;
  @override
  @JsonKey(name: 'linea', defaultValue: '')
  String get linea;
  @override
  @JsonKey(name: 'color', defaultValue: '')
  String get color;
  @override
  @JsonKey(name: 'cant', defaultValue: 0)
  int get cant;
  @override
  @JsonKey(name: 'mar_mante', defaultValue: '')
  String get marMante;
  @override
  @JsonKey(ignore: true)
  _$ContadorLocoCopyWith<_ContadorLoco> get copyWith =>
      throw _privateConstructorUsedError;
}
