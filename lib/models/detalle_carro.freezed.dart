// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detalle_carro.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetalleCarro _$DetalleCarroFromJson(Map<String, dynamic> json) {
  return _DetalleCarro.fromJson(json);
}

/// @nodoc
class _$DetalleCarroTearOff {
  const _$DetalleCarroTearOff();

  _DetalleCarro call(
      {@JsonKey(name: 'estacion', defaultValue: '')
          required String estacion,
      @JsonKey(name: 'linea', defaultValue: '')
          required String linea,
      @JsonKey(name: 'cod_servicio', defaultValue: '')
          required String codServicio,
      @JsonKey(name: 'numero', defaultValue: '')
          required String numero,
      @JsonKey(name: 'marca_mante', defaultValue: 'SINESTADO')
          required String marcaMante,
      @JsonKey(name: 'color', defaultValue: '')
          required String color,
      @JsonKey(name: 'obs_marca', defaultValue: '')
          required String obsMante,
      @JsonKey(name: 'estado_carga', defaultValue: '')
          required String estadoCarga}) {
    return _DetalleCarro(
      estacion: estacion,
      linea: linea,
      codServicio: codServicio,
      numero: numero,
      marcaMante: marcaMante,
      color: color,
      obsMante: obsMante,
      estadoCarga: estadoCarga,
    );
  }

  DetalleCarro fromJson(Map<String, Object?> json) {
    return DetalleCarro.fromJson(json);
  }
}

/// @nodoc
const $DetalleCarro = _$DetalleCarroTearOff();

/// @nodoc
mixin _$DetalleCarro {
  @JsonKey(name: 'estacion', defaultValue: '')
  String get estacion => throw _privateConstructorUsedError;
  @JsonKey(name: 'linea', defaultValue: '')
  String get linea => throw _privateConstructorUsedError;
  @JsonKey(name: 'cod_servicio', defaultValue: '')
  String get codServicio => throw _privateConstructorUsedError;
  @JsonKey(name: 'numero', defaultValue: '')
  String get numero => throw _privateConstructorUsedError;
  @JsonKey(name: 'marca_mante', defaultValue: 'SINESTADO')
  String get marcaMante => throw _privateConstructorUsedError;
  @JsonKey(name: 'color', defaultValue: '')
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'obs_marca', defaultValue: '')
  String get obsMante => throw _privateConstructorUsedError;
  @JsonKey(name: 'estado_carga', defaultValue: '')
  String get estadoCarga => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetalleCarroCopyWith<DetalleCarro> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetalleCarroCopyWith<$Res> {
  factory $DetalleCarroCopyWith(
          DetalleCarro value, $Res Function(DetalleCarro) then) =
      _$DetalleCarroCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'estacion', defaultValue: '')
          String estacion,
      @JsonKey(name: 'linea', defaultValue: '')
          String linea,
      @JsonKey(name: 'cod_servicio', defaultValue: '')
          String codServicio,
      @JsonKey(name: 'numero', defaultValue: '')
          String numero,
      @JsonKey(name: 'marca_mante', defaultValue: 'SINESTADO')
          String marcaMante,
      @JsonKey(name: 'color', defaultValue: '')
          String color,
      @JsonKey(name: 'obs_marca', defaultValue: '')
          String obsMante,
      @JsonKey(name: 'estado_carga', defaultValue: '')
          String estadoCarga});
}

/// @nodoc
class _$DetalleCarroCopyWithImpl<$Res> implements $DetalleCarroCopyWith<$Res> {
  _$DetalleCarroCopyWithImpl(this._value, this._then);

  final DetalleCarro _value;
  // ignore: unused_field
  final $Res Function(DetalleCarro) _then;

  @override
  $Res call({
    Object? estacion = freezed,
    Object? linea = freezed,
    Object? codServicio = freezed,
    Object? numero = freezed,
    Object? marcaMante = freezed,
    Object? color = freezed,
    Object? obsMante = freezed,
    Object? estadoCarga = freezed,
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
      codServicio: codServicio == freezed
          ? _value.codServicio
          : codServicio // ignore: cast_nullable_to_non_nullable
              as String,
      numero: numero == freezed
          ? _value.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as String,
      marcaMante: marcaMante == freezed
          ? _value.marcaMante
          : marcaMante // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      obsMante: obsMante == freezed
          ? _value.obsMante
          : obsMante // ignore: cast_nullable_to_non_nullable
              as String,
      estadoCarga: estadoCarga == freezed
          ? _value.estadoCarga
          : estadoCarga // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DetalleCarroCopyWith<$Res>
    implements $DetalleCarroCopyWith<$Res> {
  factory _$DetalleCarroCopyWith(
          _DetalleCarro value, $Res Function(_DetalleCarro) then) =
      __$DetalleCarroCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'estacion', defaultValue: '')
          String estacion,
      @JsonKey(name: 'linea', defaultValue: '')
          String linea,
      @JsonKey(name: 'cod_servicio', defaultValue: '')
          String codServicio,
      @JsonKey(name: 'numero', defaultValue: '')
          String numero,
      @JsonKey(name: 'marca_mante', defaultValue: 'SINESTADO')
          String marcaMante,
      @JsonKey(name: 'color', defaultValue: '')
          String color,
      @JsonKey(name: 'obs_marca', defaultValue: '')
          String obsMante,
      @JsonKey(name: 'estado_carga', defaultValue: '')
          String estadoCarga});
}

/// @nodoc
class __$DetalleCarroCopyWithImpl<$Res> extends _$DetalleCarroCopyWithImpl<$Res>
    implements _$DetalleCarroCopyWith<$Res> {
  __$DetalleCarroCopyWithImpl(
      _DetalleCarro _value, $Res Function(_DetalleCarro) _then)
      : super(_value, (v) => _then(v as _DetalleCarro));

  @override
  _DetalleCarro get _value => super._value as _DetalleCarro;

  @override
  $Res call({
    Object? estacion = freezed,
    Object? linea = freezed,
    Object? codServicio = freezed,
    Object? numero = freezed,
    Object? marcaMante = freezed,
    Object? color = freezed,
    Object? obsMante = freezed,
    Object? estadoCarga = freezed,
  }) {
    return _then(_DetalleCarro(
      estacion: estacion == freezed
          ? _value.estacion
          : estacion // ignore: cast_nullable_to_non_nullable
              as String,
      linea: linea == freezed
          ? _value.linea
          : linea // ignore: cast_nullable_to_non_nullable
              as String,
      codServicio: codServicio == freezed
          ? _value.codServicio
          : codServicio // ignore: cast_nullable_to_non_nullable
              as String,
      numero: numero == freezed
          ? _value.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as String,
      marcaMante: marcaMante == freezed
          ? _value.marcaMante
          : marcaMante // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      obsMante: obsMante == freezed
          ? _value.obsMante
          : obsMante // ignore: cast_nullable_to_non_nullable
              as String,
      estadoCarga: estadoCarga == freezed
          ? _value.estadoCarga
          : estadoCarga // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetalleCarro implements _DetalleCarro {
  _$_DetalleCarro(
      {@JsonKey(name: 'estacion', defaultValue: '')
          required this.estacion,
      @JsonKey(name: 'linea', defaultValue: '')
          required this.linea,
      @JsonKey(name: 'cod_servicio', defaultValue: '')
          required this.codServicio,
      @JsonKey(name: 'numero', defaultValue: '')
          required this.numero,
      @JsonKey(name: 'marca_mante', defaultValue: 'SINESTADO')
          required this.marcaMante,
      @JsonKey(name: 'color', defaultValue: '')
          required this.color,
      @JsonKey(name: 'obs_marca', defaultValue: '')
          required this.obsMante,
      @JsonKey(name: 'estado_carga', defaultValue: '')
          required this.estadoCarga});

  factory _$_DetalleCarro.fromJson(Map<String, dynamic> json) =>
      _$$_DetalleCarroFromJson(json);

  @override
  @JsonKey(name: 'estacion', defaultValue: '')
  final String estacion;
  @override
  @JsonKey(name: 'linea', defaultValue: '')
  final String linea;
  @override
  @JsonKey(name: 'cod_servicio', defaultValue: '')
  final String codServicio;
  @override
  @JsonKey(name: 'numero', defaultValue: '')
  final String numero;
  @override
  @JsonKey(name: 'marca_mante', defaultValue: 'SINESTADO')
  final String marcaMante;
  @override
  @JsonKey(name: 'color', defaultValue: '')
  final String color;
  @override
  @JsonKey(name: 'obs_marca', defaultValue: '')
  final String obsMante;
  @override
  @JsonKey(name: 'estado_carga', defaultValue: '')
  final String estadoCarga;

  @override
  String toString() {
    return 'DetalleCarro(estacion: $estacion, linea: $linea, codServicio: $codServicio, numero: $numero, marcaMante: $marcaMante, color: $color, obsMante: $obsMante, estadoCarga: $estadoCarga)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetalleCarro &&
            const DeepCollectionEquality().equals(other.estacion, estacion) &&
            const DeepCollectionEquality().equals(other.linea, linea) &&
            const DeepCollectionEquality()
                .equals(other.codServicio, codServicio) &&
            const DeepCollectionEquality().equals(other.numero, numero) &&
            const DeepCollectionEquality()
                .equals(other.marcaMante, marcaMante) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.obsMante, obsMante) &&
            const DeepCollectionEquality()
                .equals(other.estadoCarga, estadoCarga));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(estacion),
      const DeepCollectionEquality().hash(linea),
      const DeepCollectionEquality().hash(codServicio),
      const DeepCollectionEquality().hash(numero),
      const DeepCollectionEquality().hash(marcaMante),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(obsMante),
      const DeepCollectionEquality().hash(estadoCarga));

  @JsonKey(ignore: true)
  @override
  _$DetalleCarroCopyWith<_DetalleCarro> get copyWith =>
      __$DetalleCarroCopyWithImpl<_DetalleCarro>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetalleCarroToJson(this);
  }
}

abstract class _DetalleCarro implements DetalleCarro {
  factory _DetalleCarro(
      {@JsonKey(name: 'estacion', defaultValue: '')
          required String estacion,
      @JsonKey(name: 'linea', defaultValue: '')
          required String linea,
      @JsonKey(name: 'cod_servicio', defaultValue: '')
          required String codServicio,
      @JsonKey(name: 'numero', defaultValue: '')
          required String numero,
      @JsonKey(name: 'marca_mante', defaultValue: 'SINESTADO')
          required String marcaMante,
      @JsonKey(name: 'color', defaultValue: '')
          required String color,
      @JsonKey(name: 'obs_marca', defaultValue: '')
          required String obsMante,
      @JsonKey(name: 'estado_carga', defaultValue: '')
          required String estadoCarga}) = _$_DetalleCarro;

  factory _DetalleCarro.fromJson(Map<String, dynamic> json) =
      _$_DetalleCarro.fromJson;

  @override
  @JsonKey(name: 'estacion', defaultValue: '')
  String get estacion;
  @override
  @JsonKey(name: 'linea', defaultValue: '')
  String get linea;
  @override
  @JsonKey(name: 'cod_servicio', defaultValue: '')
  String get codServicio;
  @override
  @JsonKey(name: 'numero', defaultValue: '')
  String get numero;
  @override
  @JsonKey(name: 'marca_mante', defaultValue: 'SINESTADO')
  String get marcaMante;
  @override
  @JsonKey(name: 'color', defaultValue: '')
  String get color;
  @override
  @JsonKey(name: 'obs_marca', defaultValue: '')
  String get obsMante;
  @override
  @JsonKey(name: 'estado_carga', defaultValue: '')
  String get estadoCarga;
  @override
  @JsonKey(ignore: true)
  _$DetalleCarroCopyWith<_DetalleCarro> get copyWith =>
      throw _privateConstructorUsedError;
}
