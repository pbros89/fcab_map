// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tren_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrenPoint _$TrenPointFromJson(Map<String, dynamic> json) {
  return _TrenPoint.fromJson(json);
}

/// @nodoc
class _$TrenPointTearOff {
  const _$TrenPointTearOff();

  _TrenPoint call(
      {@JsonKey(name: 'nro_prog') required int nroProg,
      @JsonKey(name: 'nro_tren') required int nroTren,
      @JsonKey(name: 'hr_salida') required String hrSalida,
      @JsonKey(name: 'hr_llegada') required String hrLlegada,
      @JsonKey(name: 'nombre_tren') required int nombreTren,
      @JsonKey(name: 'sentido') required String sentido,
      @JsonKey(name: 'color') required String color,
      @JsonKey(name: 'evento_actual') required String eventoActual,
      @JsonKey(name: 'fecha_pos') required String fechaPos,
      @JsonKey(name: 'fecha_tren') required String fechaTren,
      @JsonKey(name: 'km') required double km,
      @JsonKey(name: 'velocidad') required int velocidad,
      @JsonKey(name: 'cod_ramal') required String codRamal,
      @JsonKey(name: 'utm_x') required double utmX,
      @JsonKey(name: 'utm_y') required double utmY,
      required double lat,
      required double lon}) {
    return _TrenPoint(
      nroProg: nroProg,
      nroTren: nroTren,
      hrSalida: hrSalida,
      hrLlegada: hrLlegada,
      nombreTren: nombreTren,
      sentido: sentido,
      color: color,
      eventoActual: eventoActual,
      fechaPos: fechaPos,
      fechaTren: fechaTren,
      km: km,
      velocidad: velocidad,
      codRamal: codRamal,
      utmX: utmX,
      utmY: utmY,
      lat: lat,
      lon: lon,
    );
  }

  TrenPoint fromJson(Map<String, Object?> json) {
    return TrenPoint.fromJson(json);
  }
}

/// @nodoc
const $TrenPoint = _$TrenPointTearOff();

/// @nodoc
mixin _$TrenPoint {
  @JsonKey(name: 'nro_prog')
  int get nroProg => throw _privateConstructorUsedError;
  @JsonKey(name: 'nro_tren')
  int get nroTren => throw _privateConstructorUsedError;
  @JsonKey(name: 'hr_salida')
  String get hrSalida => throw _privateConstructorUsedError;
  @JsonKey(name: 'hr_llegada')
  String get hrLlegada => throw _privateConstructorUsedError;
  @JsonKey(name: 'nombre_tren')
  int get nombreTren => throw _privateConstructorUsedError;
  @JsonKey(name: 'sentido')
  String get sentido => throw _privateConstructorUsedError;
  @JsonKey(name: 'color')
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'evento_actual')
  String get eventoActual => throw _privateConstructorUsedError;
  @JsonKey(name: 'fecha_pos')
  String get fechaPos => throw _privateConstructorUsedError;
  @JsonKey(name: 'fecha_tren')
  String get fechaTren => throw _privateConstructorUsedError;
  @JsonKey(name: 'km')
  double get km => throw _privateConstructorUsedError;
  @JsonKey(name: 'velocidad')
  int get velocidad => throw _privateConstructorUsedError;
  @JsonKey(name: 'cod_ramal')
  String get codRamal => throw _privateConstructorUsedError;
  @JsonKey(name: 'utm_x')
  double get utmX => throw _privateConstructorUsedError;
  @JsonKey(name: 'utm_y')
  double get utmY => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrenPointCopyWith<TrenPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrenPointCopyWith<$Res> {
  factory $TrenPointCopyWith(TrenPoint value, $Res Function(TrenPoint) then) =
      _$TrenPointCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'nro_prog') int nroProg,
      @JsonKey(name: 'nro_tren') int nroTren,
      @JsonKey(name: 'hr_salida') String hrSalida,
      @JsonKey(name: 'hr_llegada') String hrLlegada,
      @JsonKey(name: 'nombre_tren') int nombreTren,
      @JsonKey(name: 'sentido') String sentido,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'evento_actual') String eventoActual,
      @JsonKey(name: 'fecha_pos') String fechaPos,
      @JsonKey(name: 'fecha_tren') String fechaTren,
      @JsonKey(name: 'km') double km,
      @JsonKey(name: 'velocidad') int velocidad,
      @JsonKey(name: 'cod_ramal') String codRamal,
      @JsonKey(name: 'utm_x') double utmX,
      @JsonKey(name: 'utm_y') double utmY,
      double lat,
      double lon});
}

/// @nodoc
class _$TrenPointCopyWithImpl<$Res> implements $TrenPointCopyWith<$Res> {
  _$TrenPointCopyWithImpl(this._value, this._then);

  final TrenPoint _value;
  // ignore: unused_field
  final $Res Function(TrenPoint) _then;

  @override
  $Res call({
    Object? nroProg = freezed,
    Object? nroTren = freezed,
    Object? hrSalida = freezed,
    Object? hrLlegada = freezed,
    Object? nombreTren = freezed,
    Object? sentido = freezed,
    Object? color = freezed,
    Object? eventoActual = freezed,
    Object? fechaPos = freezed,
    Object? fechaTren = freezed,
    Object? km = freezed,
    Object? velocidad = freezed,
    Object? codRamal = freezed,
    Object? utmX = freezed,
    Object? utmY = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      nroProg: nroProg == freezed
          ? _value.nroProg
          : nroProg // ignore: cast_nullable_to_non_nullable
              as int,
      nroTren: nroTren == freezed
          ? _value.nroTren
          : nroTren // ignore: cast_nullable_to_non_nullable
              as int,
      hrSalida: hrSalida == freezed
          ? _value.hrSalida
          : hrSalida // ignore: cast_nullable_to_non_nullable
              as String,
      hrLlegada: hrLlegada == freezed
          ? _value.hrLlegada
          : hrLlegada // ignore: cast_nullable_to_non_nullable
              as String,
      nombreTren: nombreTren == freezed
          ? _value.nombreTren
          : nombreTren // ignore: cast_nullable_to_non_nullable
              as int,
      sentido: sentido == freezed
          ? _value.sentido
          : sentido // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      eventoActual: eventoActual == freezed
          ? _value.eventoActual
          : eventoActual // ignore: cast_nullable_to_non_nullable
              as String,
      fechaPos: fechaPos == freezed
          ? _value.fechaPos
          : fechaPos // ignore: cast_nullable_to_non_nullable
              as String,
      fechaTren: fechaTren == freezed
          ? _value.fechaTren
          : fechaTren // ignore: cast_nullable_to_non_nullable
              as String,
      km: km == freezed
          ? _value.km
          : km // ignore: cast_nullable_to_non_nullable
              as double,
      velocidad: velocidad == freezed
          ? _value.velocidad
          : velocidad // ignore: cast_nullable_to_non_nullable
              as int,
      codRamal: codRamal == freezed
          ? _value.codRamal
          : codRamal // ignore: cast_nullable_to_non_nullable
              as String,
      utmX: utmX == freezed
          ? _value.utmX
          : utmX // ignore: cast_nullable_to_non_nullable
              as double,
      utmY: utmY == freezed
          ? _value.utmY
          : utmY // ignore: cast_nullable_to_non_nullable
              as double,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TrenPointCopyWith<$Res> implements $TrenPointCopyWith<$Res> {
  factory _$TrenPointCopyWith(
          _TrenPoint value, $Res Function(_TrenPoint) then) =
      __$TrenPointCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'nro_prog') int nroProg,
      @JsonKey(name: 'nro_tren') int nroTren,
      @JsonKey(name: 'hr_salida') String hrSalida,
      @JsonKey(name: 'hr_llegada') String hrLlegada,
      @JsonKey(name: 'nombre_tren') int nombreTren,
      @JsonKey(name: 'sentido') String sentido,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'evento_actual') String eventoActual,
      @JsonKey(name: 'fecha_pos') String fechaPos,
      @JsonKey(name: 'fecha_tren') String fechaTren,
      @JsonKey(name: 'km') double km,
      @JsonKey(name: 'velocidad') int velocidad,
      @JsonKey(name: 'cod_ramal') String codRamal,
      @JsonKey(name: 'utm_x') double utmX,
      @JsonKey(name: 'utm_y') double utmY,
      double lat,
      double lon});
}

/// @nodoc
class __$TrenPointCopyWithImpl<$Res> extends _$TrenPointCopyWithImpl<$Res>
    implements _$TrenPointCopyWith<$Res> {
  __$TrenPointCopyWithImpl(_TrenPoint _value, $Res Function(_TrenPoint) _then)
      : super(_value, (v) => _then(v as _TrenPoint));

  @override
  _TrenPoint get _value => super._value as _TrenPoint;

  @override
  $Res call({
    Object? nroProg = freezed,
    Object? nroTren = freezed,
    Object? hrSalida = freezed,
    Object? hrLlegada = freezed,
    Object? nombreTren = freezed,
    Object? sentido = freezed,
    Object? color = freezed,
    Object? eventoActual = freezed,
    Object? fechaPos = freezed,
    Object? fechaTren = freezed,
    Object? km = freezed,
    Object? velocidad = freezed,
    Object? codRamal = freezed,
    Object? utmX = freezed,
    Object? utmY = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_TrenPoint(
      nroProg: nroProg == freezed
          ? _value.nroProg
          : nroProg // ignore: cast_nullable_to_non_nullable
              as int,
      nroTren: nroTren == freezed
          ? _value.nroTren
          : nroTren // ignore: cast_nullable_to_non_nullable
              as int,
      hrSalida: hrSalida == freezed
          ? _value.hrSalida
          : hrSalida // ignore: cast_nullable_to_non_nullable
              as String,
      hrLlegada: hrLlegada == freezed
          ? _value.hrLlegada
          : hrLlegada // ignore: cast_nullable_to_non_nullable
              as String,
      nombreTren: nombreTren == freezed
          ? _value.nombreTren
          : nombreTren // ignore: cast_nullable_to_non_nullable
              as int,
      sentido: sentido == freezed
          ? _value.sentido
          : sentido // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      eventoActual: eventoActual == freezed
          ? _value.eventoActual
          : eventoActual // ignore: cast_nullable_to_non_nullable
              as String,
      fechaPos: fechaPos == freezed
          ? _value.fechaPos
          : fechaPos // ignore: cast_nullable_to_non_nullable
              as String,
      fechaTren: fechaTren == freezed
          ? _value.fechaTren
          : fechaTren // ignore: cast_nullable_to_non_nullable
              as String,
      km: km == freezed
          ? _value.km
          : km // ignore: cast_nullable_to_non_nullable
              as double,
      velocidad: velocidad == freezed
          ? _value.velocidad
          : velocidad // ignore: cast_nullable_to_non_nullable
              as int,
      codRamal: codRamal == freezed
          ? _value.codRamal
          : codRamal // ignore: cast_nullable_to_non_nullable
              as String,
      utmX: utmX == freezed
          ? _value.utmX
          : utmX // ignore: cast_nullable_to_non_nullable
              as double,
      utmY: utmY == freezed
          ? _value.utmY
          : utmY // ignore: cast_nullable_to_non_nullable
              as double,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrenPoint implements _TrenPoint {
  _$_TrenPoint(
      {@JsonKey(name: 'nro_prog') required this.nroProg,
      @JsonKey(name: 'nro_tren') required this.nroTren,
      @JsonKey(name: 'hr_salida') required this.hrSalida,
      @JsonKey(name: 'hr_llegada') required this.hrLlegada,
      @JsonKey(name: 'nombre_tren') required this.nombreTren,
      @JsonKey(name: 'sentido') required this.sentido,
      @JsonKey(name: 'color') required this.color,
      @JsonKey(name: 'evento_actual') required this.eventoActual,
      @JsonKey(name: 'fecha_pos') required this.fechaPos,
      @JsonKey(name: 'fecha_tren') required this.fechaTren,
      @JsonKey(name: 'km') required this.km,
      @JsonKey(name: 'velocidad') required this.velocidad,
      @JsonKey(name: 'cod_ramal') required this.codRamal,
      @JsonKey(name: 'utm_x') required this.utmX,
      @JsonKey(name: 'utm_y') required this.utmY,
      required this.lat,
      required this.lon});

  factory _$_TrenPoint.fromJson(Map<String, dynamic> json) =>
      _$$_TrenPointFromJson(json);

  @override
  @JsonKey(name: 'nro_prog')
  final int nroProg;
  @override
  @JsonKey(name: 'nro_tren')
  final int nroTren;
  @override
  @JsonKey(name: 'hr_salida')
  final String hrSalida;
  @override
  @JsonKey(name: 'hr_llegada')
  final String hrLlegada;
  @override
  @JsonKey(name: 'nombre_tren')
  final int nombreTren;
  @override
  @JsonKey(name: 'sentido')
  final String sentido;
  @override
  @JsonKey(name: 'color')
  final String color;
  @override
  @JsonKey(name: 'evento_actual')
  final String eventoActual;
  @override
  @JsonKey(name: 'fecha_pos')
  final String fechaPos;
  @override
  @JsonKey(name: 'fecha_tren')
  final String fechaTren;
  @override
  @JsonKey(name: 'km')
  final double km;
  @override
  @JsonKey(name: 'velocidad')
  final int velocidad;
  @override
  @JsonKey(name: 'cod_ramal')
  final String codRamal;
  @override
  @JsonKey(name: 'utm_x')
  final double utmX;
  @override
  @JsonKey(name: 'utm_y')
  final double utmY;
  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString() {
    return 'TrenPoint(nroProg: $nroProg, nroTren: $nroTren, hrSalida: $hrSalida, hrLlegada: $hrLlegada, nombreTren: $nombreTren, sentido: $sentido, color: $color, eventoActual: $eventoActual, fechaPos: $fechaPos, fechaTren: $fechaTren, km: $km, velocidad: $velocidad, codRamal: $codRamal, utmX: $utmX, utmY: $utmY, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrenPoint &&
            const DeepCollectionEquality().equals(other.nroProg, nroProg) &&
            const DeepCollectionEquality().equals(other.nroTren, nroTren) &&
            const DeepCollectionEquality().equals(other.hrSalida, hrSalida) &&
            const DeepCollectionEquality().equals(other.hrLlegada, hrLlegada) &&
            const DeepCollectionEquality()
                .equals(other.nombreTren, nombreTren) &&
            const DeepCollectionEquality().equals(other.sentido, sentido) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.eventoActual, eventoActual) &&
            const DeepCollectionEquality().equals(other.fechaPos, fechaPos) &&
            const DeepCollectionEquality().equals(other.fechaTren, fechaTren) &&
            const DeepCollectionEquality().equals(other.km, km) &&
            const DeepCollectionEquality().equals(other.velocidad, velocidad) &&
            const DeepCollectionEquality().equals(other.codRamal, codRamal) &&
            const DeepCollectionEquality().equals(other.utmX, utmX) &&
            const DeepCollectionEquality().equals(other.utmY, utmY) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nroProg),
      const DeepCollectionEquality().hash(nroTren),
      const DeepCollectionEquality().hash(hrSalida),
      const DeepCollectionEquality().hash(hrLlegada),
      const DeepCollectionEquality().hash(nombreTren),
      const DeepCollectionEquality().hash(sentido),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(eventoActual),
      const DeepCollectionEquality().hash(fechaPos),
      const DeepCollectionEquality().hash(fechaTren),
      const DeepCollectionEquality().hash(km),
      const DeepCollectionEquality().hash(velocidad),
      const DeepCollectionEquality().hash(codRamal),
      const DeepCollectionEquality().hash(utmX),
      const DeepCollectionEquality().hash(utmY),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon));

  @JsonKey(ignore: true)
  @override
  _$TrenPointCopyWith<_TrenPoint> get copyWith =>
      __$TrenPointCopyWithImpl<_TrenPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrenPointToJson(this);
  }
}

abstract class _TrenPoint implements TrenPoint {
  factory _TrenPoint(
      {@JsonKey(name: 'nro_prog') required int nroProg,
      @JsonKey(name: 'nro_tren') required int nroTren,
      @JsonKey(name: 'hr_salida') required String hrSalida,
      @JsonKey(name: 'hr_llegada') required String hrLlegada,
      @JsonKey(name: 'nombre_tren') required int nombreTren,
      @JsonKey(name: 'sentido') required String sentido,
      @JsonKey(name: 'color') required String color,
      @JsonKey(name: 'evento_actual') required String eventoActual,
      @JsonKey(name: 'fecha_pos') required String fechaPos,
      @JsonKey(name: 'fecha_tren') required String fechaTren,
      @JsonKey(name: 'km') required double km,
      @JsonKey(name: 'velocidad') required int velocidad,
      @JsonKey(name: 'cod_ramal') required String codRamal,
      @JsonKey(name: 'utm_x') required double utmX,
      @JsonKey(name: 'utm_y') required double utmY,
      required double lat,
      required double lon}) = _$_TrenPoint;

  factory _TrenPoint.fromJson(Map<String, dynamic> json) =
      _$_TrenPoint.fromJson;

  @override
  @JsonKey(name: 'nro_prog')
  int get nroProg;
  @override
  @JsonKey(name: 'nro_tren')
  int get nroTren;
  @override
  @JsonKey(name: 'hr_salida')
  String get hrSalida;
  @override
  @JsonKey(name: 'hr_llegada')
  String get hrLlegada;
  @override
  @JsonKey(name: 'nombre_tren')
  int get nombreTren;
  @override
  @JsonKey(name: 'sentido')
  String get sentido;
  @override
  @JsonKey(name: 'color')
  String get color;
  @override
  @JsonKey(name: 'evento_actual')
  String get eventoActual;
  @override
  @JsonKey(name: 'fecha_pos')
  String get fechaPos;
  @override
  @JsonKey(name: 'fecha_tren')
  String get fechaTren;
  @override
  @JsonKey(name: 'km')
  double get km;
  @override
  @JsonKey(name: 'velocidad')
  int get velocidad;
  @override
  @JsonKey(name: 'cod_ramal')
  String get codRamal;
  @override
  @JsonKey(name: 'utm_x')
  double get utmX;
  @override
  @JsonKey(name: 'utm_y')
  double get utmY;
  @override
  double get lat;
  @override
  double get lon;
  @override
  @JsonKey(ignore: true)
  _$TrenPointCopyWith<_TrenPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
