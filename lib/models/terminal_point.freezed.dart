// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'terminal_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TerminalPoint _$TerminalPointFromJson(Map<String, dynamic> json) {
  return _TerminalPoint.fromJson(json);
}

/// @nodoc
class _$TerminalPointTearOff {
  const _$TerminalPointTearOff();

  _TerminalPoint call(
      {@JsonKey(name: 'cod_ramal') required String codRamal,
      @JsonKey(name: 'cod_estacion') required String codEstacion,
      @JsonKey(name: 'kil_inicio') required double kmIni,
      @JsonKey(name: 'kil_final') required double kmFin,
      @JsonKey(name: 'utm_x') required double utmX,
      @JsonKey(name: 'utm_y') required double utmY,
      required double lat,
      required double lon}) {
    return _TerminalPoint(
      codRamal: codRamal,
      codEstacion: codEstacion,
      kmIni: kmIni,
      kmFin: kmFin,
      utmX: utmX,
      utmY: utmY,
      lat: lat,
      lon: lon,
    );
  }

  TerminalPoint fromJson(Map<String, Object?> json) {
    return TerminalPoint.fromJson(json);
  }
}

/// @nodoc
const $TerminalPoint = _$TerminalPointTearOff();

/// @nodoc
mixin _$TerminalPoint {
  @JsonKey(name: 'cod_ramal')
  String get codRamal => throw _privateConstructorUsedError;
  @JsonKey(name: 'cod_estacion')
  String get codEstacion => throw _privateConstructorUsedError;
  @JsonKey(name: 'kil_inicio')
  double get kmIni => throw _privateConstructorUsedError;
  @JsonKey(name: 'kil_final')
  double get kmFin => throw _privateConstructorUsedError;
  @JsonKey(name: 'utm_x')
  double get utmX => throw _privateConstructorUsedError;
  @JsonKey(name: 'utm_y')
  double get utmY => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TerminalPointCopyWith<TerminalPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminalPointCopyWith<$Res> {
  factory $TerminalPointCopyWith(
          TerminalPoint value, $Res Function(TerminalPoint) then) =
      _$TerminalPointCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'cod_ramal') String codRamal,
      @JsonKey(name: 'cod_estacion') String codEstacion,
      @JsonKey(name: 'kil_inicio') double kmIni,
      @JsonKey(name: 'kil_final') double kmFin,
      @JsonKey(name: 'utm_x') double utmX,
      @JsonKey(name: 'utm_y') double utmY,
      double lat,
      double lon});
}

/// @nodoc
class _$TerminalPointCopyWithImpl<$Res>
    implements $TerminalPointCopyWith<$Res> {
  _$TerminalPointCopyWithImpl(this._value, this._then);

  final TerminalPoint _value;
  // ignore: unused_field
  final $Res Function(TerminalPoint) _then;

  @override
  $Res call({
    Object? codRamal = freezed,
    Object? codEstacion = freezed,
    Object? kmIni = freezed,
    Object? kmFin = freezed,
    Object? utmX = freezed,
    Object? utmY = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      codRamal: codRamal == freezed
          ? _value.codRamal
          : codRamal // ignore: cast_nullable_to_non_nullable
              as String,
      codEstacion: codEstacion == freezed
          ? _value.codEstacion
          : codEstacion // ignore: cast_nullable_to_non_nullable
              as String,
      kmIni: kmIni == freezed
          ? _value.kmIni
          : kmIni // ignore: cast_nullable_to_non_nullable
              as double,
      kmFin: kmFin == freezed
          ? _value.kmFin
          : kmFin // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$TerminalPointCopyWith<$Res>
    implements $TerminalPointCopyWith<$Res> {
  factory _$TerminalPointCopyWith(
          _TerminalPoint value, $Res Function(_TerminalPoint) then) =
      __$TerminalPointCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'cod_ramal') String codRamal,
      @JsonKey(name: 'cod_estacion') String codEstacion,
      @JsonKey(name: 'kil_inicio') double kmIni,
      @JsonKey(name: 'kil_final') double kmFin,
      @JsonKey(name: 'utm_x') double utmX,
      @JsonKey(name: 'utm_y') double utmY,
      double lat,
      double lon});
}

/// @nodoc
class __$TerminalPointCopyWithImpl<$Res>
    extends _$TerminalPointCopyWithImpl<$Res>
    implements _$TerminalPointCopyWith<$Res> {
  __$TerminalPointCopyWithImpl(
      _TerminalPoint _value, $Res Function(_TerminalPoint) _then)
      : super(_value, (v) => _then(v as _TerminalPoint));

  @override
  _TerminalPoint get _value => super._value as _TerminalPoint;

  @override
  $Res call({
    Object? codRamal = freezed,
    Object? codEstacion = freezed,
    Object? kmIni = freezed,
    Object? kmFin = freezed,
    Object? utmX = freezed,
    Object? utmY = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_TerminalPoint(
      codRamal: codRamal == freezed
          ? _value.codRamal
          : codRamal // ignore: cast_nullable_to_non_nullable
              as String,
      codEstacion: codEstacion == freezed
          ? _value.codEstacion
          : codEstacion // ignore: cast_nullable_to_non_nullable
              as String,
      kmIni: kmIni == freezed
          ? _value.kmIni
          : kmIni // ignore: cast_nullable_to_non_nullable
              as double,
      kmFin: kmFin == freezed
          ? _value.kmFin
          : kmFin // ignore: cast_nullable_to_non_nullable
              as double,
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
class _$_TerminalPoint implements _TerminalPoint {
  _$_TerminalPoint(
      {@JsonKey(name: 'cod_ramal') required this.codRamal,
      @JsonKey(name: 'cod_estacion') required this.codEstacion,
      @JsonKey(name: 'kil_inicio') required this.kmIni,
      @JsonKey(name: 'kil_final') required this.kmFin,
      @JsonKey(name: 'utm_x') required this.utmX,
      @JsonKey(name: 'utm_y') required this.utmY,
      required this.lat,
      required this.lon});

  factory _$_TerminalPoint.fromJson(Map<String, dynamic> json) =>
      _$$_TerminalPointFromJson(json);

  @override
  @JsonKey(name: 'cod_ramal')
  final String codRamal;
  @override
  @JsonKey(name: 'cod_estacion')
  final String codEstacion;
  @override
  @JsonKey(name: 'kil_inicio')
  final double kmIni;
  @override
  @JsonKey(name: 'kil_final')
  final double kmFin;
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
    return 'TerminalPoint(codRamal: $codRamal, codEstacion: $codEstacion, kmIni: $kmIni, kmFin: $kmFin, utmX: $utmX, utmY: $utmY, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TerminalPoint &&
            const DeepCollectionEquality().equals(other.codRamal, codRamal) &&
            const DeepCollectionEquality()
                .equals(other.codEstacion, codEstacion) &&
            const DeepCollectionEquality().equals(other.kmIni, kmIni) &&
            const DeepCollectionEquality().equals(other.kmFin, kmFin) &&
            const DeepCollectionEquality().equals(other.utmX, utmX) &&
            const DeepCollectionEquality().equals(other.utmY, utmY) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(codRamal),
      const DeepCollectionEquality().hash(codEstacion),
      const DeepCollectionEquality().hash(kmIni),
      const DeepCollectionEquality().hash(kmFin),
      const DeepCollectionEquality().hash(utmX),
      const DeepCollectionEquality().hash(utmY),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon));

  @JsonKey(ignore: true)
  @override
  _$TerminalPointCopyWith<_TerminalPoint> get copyWith =>
      __$TerminalPointCopyWithImpl<_TerminalPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TerminalPointToJson(this);
  }
}

abstract class _TerminalPoint implements TerminalPoint {
  factory _TerminalPoint(
      {@JsonKey(name: 'cod_ramal') required String codRamal,
      @JsonKey(name: 'cod_estacion') required String codEstacion,
      @JsonKey(name: 'kil_inicio') required double kmIni,
      @JsonKey(name: 'kil_final') required double kmFin,
      @JsonKey(name: 'utm_x') required double utmX,
      @JsonKey(name: 'utm_y') required double utmY,
      required double lat,
      required double lon}) = _$_TerminalPoint;

  factory _TerminalPoint.fromJson(Map<String, dynamic> json) =
      _$_TerminalPoint.fromJson;

  @override
  @JsonKey(name: 'cod_ramal')
  String get codRamal;
  @override
  @JsonKey(name: 'cod_estacion')
  String get codEstacion;
  @override
  @JsonKey(name: 'kil_inicio')
  double get kmIni;
  @override
  @JsonKey(name: 'kil_final')
  double get kmFin;
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
  _$TerminalPointCopyWith<_TerminalPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
