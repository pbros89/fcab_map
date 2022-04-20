// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'precaucion_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrecaucionPoint _$PrecaucionPointFromJson(Map<String, dynamic> json) {
  return _PrecaucionPoint.fromJson(json);
}

/// @nodoc
class _$PrecaucionPointTearOff {
  const _$PrecaucionPointTearOff();

  _PrecaucionPoint call(
      {required String origen,
      @JsonKey(name: 'cod_ramal') required String codRamal,
      @JsonKey(name: 'km_desde') required double kmDesde,
      @JsonKey(name: 'km_hasta') required double kmHasta,
      @JsonKey(name: 'utm_x_desde') required double utmXDesde,
      @JsonKey(name: 'utm_y_desde') required double utmYDesde,
      @JsonKey(name: 'utm_x_hasta') required double utmXHasta,
      @JsonKey(name: 'utm_y_hasta') required double utmYHasta,
      @JsonKey(name: 'lat_desde') required double latDesde,
      @JsonKey(name: 'lon_desde') required double lonDesde,
      @JsonKey(name: 'lat_hasta') required double latHasta,
      @JsonKey(name: 'lon_hasta') required double lonHasta,
      List<RamalPoint> listPoints = const []}) {
    return _PrecaucionPoint(
      origen: origen,
      codRamal: codRamal,
      kmDesde: kmDesde,
      kmHasta: kmHasta,
      utmXDesde: utmXDesde,
      utmYDesde: utmYDesde,
      utmXHasta: utmXHasta,
      utmYHasta: utmYHasta,
      latDesde: latDesde,
      lonDesde: lonDesde,
      latHasta: latHasta,
      lonHasta: lonHasta,
      listPoints: listPoints,
    );
  }

  PrecaucionPoint fromJson(Map<String, Object?> json) {
    return PrecaucionPoint.fromJson(json);
  }
}

/// @nodoc
const $PrecaucionPoint = _$PrecaucionPointTearOff();

/// @nodoc
mixin _$PrecaucionPoint {
  String get origen => throw _privateConstructorUsedError;
  @JsonKey(name: 'cod_ramal')
  String get codRamal => throw _privateConstructorUsedError;
  @JsonKey(name: 'km_desde')
  double get kmDesde => throw _privateConstructorUsedError;
  @JsonKey(name: 'km_hasta')
  double get kmHasta => throw _privateConstructorUsedError;
  @JsonKey(name: 'utm_x_desde')
  double get utmXDesde => throw _privateConstructorUsedError;
  @JsonKey(name: 'utm_y_desde')
  double get utmYDesde => throw _privateConstructorUsedError;
  @JsonKey(name: 'utm_x_hasta')
  double get utmXHasta => throw _privateConstructorUsedError;
  @JsonKey(name: 'utm_y_hasta')
  double get utmYHasta => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat_desde')
  double get latDesde => throw _privateConstructorUsedError;
  @JsonKey(name: 'lon_desde')
  double get lonDesde => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat_hasta')
  double get latHasta => throw _privateConstructorUsedError;
  @JsonKey(name: 'lon_hasta')
  double get lonHasta => throw _privateConstructorUsedError;
  List<RamalPoint> get listPoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrecaucionPointCopyWith<PrecaucionPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrecaucionPointCopyWith<$Res> {
  factory $PrecaucionPointCopyWith(
          PrecaucionPoint value, $Res Function(PrecaucionPoint) then) =
      _$PrecaucionPointCopyWithImpl<$Res>;
  $Res call(
      {String origen,
      @JsonKey(name: 'cod_ramal') String codRamal,
      @JsonKey(name: 'km_desde') double kmDesde,
      @JsonKey(name: 'km_hasta') double kmHasta,
      @JsonKey(name: 'utm_x_desde') double utmXDesde,
      @JsonKey(name: 'utm_y_desde') double utmYDesde,
      @JsonKey(name: 'utm_x_hasta') double utmXHasta,
      @JsonKey(name: 'utm_y_hasta') double utmYHasta,
      @JsonKey(name: 'lat_desde') double latDesde,
      @JsonKey(name: 'lon_desde') double lonDesde,
      @JsonKey(name: 'lat_hasta') double latHasta,
      @JsonKey(name: 'lon_hasta') double lonHasta,
      List<RamalPoint> listPoints});
}

/// @nodoc
class _$PrecaucionPointCopyWithImpl<$Res>
    implements $PrecaucionPointCopyWith<$Res> {
  _$PrecaucionPointCopyWithImpl(this._value, this._then);

  final PrecaucionPoint _value;
  // ignore: unused_field
  final $Res Function(PrecaucionPoint) _then;

  @override
  $Res call({
    Object? origen = freezed,
    Object? codRamal = freezed,
    Object? kmDesde = freezed,
    Object? kmHasta = freezed,
    Object? utmXDesde = freezed,
    Object? utmYDesde = freezed,
    Object? utmXHasta = freezed,
    Object? utmYHasta = freezed,
    Object? latDesde = freezed,
    Object? lonDesde = freezed,
    Object? latHasta = freezed,
    Object? lonHasta = freezed,
    Object? listPoints = freezed,
  }) {
    return _then(_value.copyWith(
      origen: origen == freezed
          ? _value.origen
          : origen // ignore: cast_nullable_to_non_nullable
              as String,
      codRamal: codRamal == freezed
          ? _value.codRamal
          : codRamal // ignore: cast_nullable_to_non_nullable
              as String,
      kmDesde: kmDesde == freezed
          ? _value.kmDesde
          : kmDesde // ignore: cast_nullable_to_non_nullable
              as double,
      kmHasta: kmHasta == freezed
          ? _value.kmHasta
          : kmHasta // ignore: cast_nullable_to_non_nullable
              as double,
      utmXDesde: utmXDesde == freezed
          ? _value.utmXDesde
          : utmXDesde // ignore: cast_nullable_to_non_nullable
              as double,
      utmYDesde: utmYDesde == freezed
          ? _value.utmYDesde
          : utmYDesde // ignore: cast_nullable_to_non_nullable
              as double,
      utmXHasta: utmXHasta == freezed
          ? _value.utmXHasta
          : utmXHasta // ignore: cast_nullable_to_non_nullable
              as double,
      utmYHasta: utmYHasta == freezed
          ? _value.utmYHasta
          : utmYHasta // ignore: cast_nullable_to_non_nullable
              as double,
      latDesde: latDesde == freezed
          ? _value.latDesde
          : latDesde // ignore: cast_nullable_to_non_nullable
              as double,
      lonDesde: lonDesde == freezed
          ? _value.lonDesde
          : lonDesde // ignore: cast_nullable_to_non_nullable
              as double,
      latHasta: latHasta == freezed
          ? _value.latHasta
          : latHasta // ignore: cast_nullable_to_non_nullable
              as double,
      lonHasta: lonHasta == freezed
          ? _value.lonHasta
          : lonHasta // ignore: cast_nullable_to_non_nullable
              as double,
      listPoints: listPoints == freezed
          ? _value.listPoints
          : listPoints // ignore: cast_nullable_to_non_nullable
              as List<RamalPoint>,
    ));
  }
}

/// @nodoc
abstract class _$PrecaucionPointCopyWith<$Res>
    implements $PrecaucionPointCopyWith<$Res> {
  factory _$PrecaucionPointCopyWith(
          _PrecaucionPoint value, $Res Function(_PrecaucionPoint) then) =
      __$PrecaucionPointCopyWithImpl<$Res>;
  @override
  $Res call(
      {String origen,
      @JsonKey(name: 'cod_ramal') String codRamal,
      @JsonKey(name: 'km_desde') double kmDesde,
      @JsonKey(name: 'km_hasta') double kmHasta,
      @JsonKey(name: 'utm_x_desde') double utmXDesde,
      @JsonKey(name: 'utm_y_desde') double utmYDesde,
      @JsonKey(name: 'utm_x_hasta') double utmXHasta,
      @JsonKey(name: 'utm_y_hasta') double utmYHasta,
      @JsonKey(name: 'lat_desde') double latDesde,
      @JsonKey(name: 'lon_desde') double lonDesde,
      @JsonKey(name: 'lat_hasta') double latHasta,
      @JsonKey(name: 'lon_hasta') double lonHasta,
      List<RamalPoint> listPoints});
}

/// @nodoc
class __$PrecaucionPointCopyWithImpl<$Res>
    extends _$PrecaucionPointCopyWithImpl<$Res>
    implements _$PrecaucionPointCopyWith<$Res> {
  __$PrecaucionPointCopyWithImpl(
      _PrecaucionPoint _value, $Res Function(_PrecaucionPoint) _then)
      : super(_value, (v) => _then(v as _PrecaucionPoint));

  @override
  _PrecaucionPoint get _value => super._value as _PrecaucionPoint;

  @override
  $Res call({
    Object? origen = freezed,
    Object? codRamal = freezed,
    Object? kmDesde = freezed,
    Object? kmHasta = freezed,
    Object? utmXDesde = freezed,
    Object? utmYDesde = freezed,
    Object? utmXHasta = freezed,
    Object? utmYHasta = freezed,
    Object? latDesde = freezed,
    Object? lonDesde = freezed,
    Object? latHasta = freezed,
    Object? lonHasta = freezed,
    Object? listPoints = freezed,
  }) {
    return _then(_PrecaucionPoint(
      origen: origen == freezed
          ? _value.origen
          : origen // ignore: cast_nullable_to_non_nullable
              as String,
      codRamal: codRamal == freezed
          ? _value.codRamal
          : codRamal // ignore: cast_nullable_to_non_nullable
              as String,
      kmDesde: kmDesde == freezed
          ? _value.kmDesde
          : kmDesde // ignore: cast_nullable_to_non_nullable
              as double,
      kmHasta: kmHasta == freezed
          ? _value.kmHasta
          : kmHasta // ignore: cast_nullable_to_non_nullable
              as double,
      utmXDesde: utmXDesde == freezed
          ? _value.utmXDesde
          : utmXDesde // ignore: cast_nullable_to_non_nullable
              as double,
      utmYDesde: utmYDesde == freezed
          ? _value.utmYDesde
          : utmYDesde // ignore: cast_nullable_to_non_nullable
              as double,
      utmXHasta: utmXHasta == freezed
          ? _value.utmXHasta
          : utmXHasta // ignore: cast_nullable_to_non_nullable
              as double,
      utmYHasta: utmYHasta == freezed
          ? _value.utmYHasta
          : utmYHasta // ignore: cast_nullable_to_non_nullable
              as double,
      latDesde: latDesde == freezed
          ? _value.latDesde
          : latDesde // ignore: cast_nullable_to_non_nullable
              as double,
      lonDesde: lonDesde == freezed
          ? _value.lonDesde
          : lonDesde // ignore: cast_nullable_to_non_nullable
              as double,
      latHasta: latHasta == freezed
          ? _value.latHasta
          : latHasta // ignore: cast_nullable_to_non_nullable
              as double,
      lonHasta: lonHasta == freezed
          ? _value.lonHasta
          : lonHasta // ignore: cast_nullable_to_non_nullable
              as double,
      listPoints: listPoints == freezed
          ? _value.listPoints
          : listPoints // ignore: cast_nullable_to_non_nullable
              as List<RamalPoint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrecaucionPoint implements _PrecaucionPoint {
  _$_PrecaucionPoint(
      {required this.origen,
      @JsonKey(name: 'cod_ramal') required this.codRamal,
      @JsonKey(name: 'km_desde') required this.kmDesde,
      @JsonKey(name: 'km_hasta') required this.kmHasta,
      @JsonKey(name: 'utm_x_desde') required this.utmXDesde,
      @JsonKey(name: 'utm_y_desde') required this.utmYDesde,
      @JsonKey(name: 'utm_x_hasta') required this.utmXHasta,
      @JsonKey(name: 'utm_y_hasta') required this.utmYHasta,
      @JsonKey(name: 'lat_desde') required this.latDesde,
      @JsonKey(name: 'lon_desde') required this.lonDesde,
      @JsonKey(name: 'lat_hasta') required this.latHasta,
      @JsonKey(name: 'lon_hasta') required this.lonHasta,
      this.listPoints = const []});

  factory _$_PrecaucionPoint.fromJson(Map<String, dynamic> json) =>
      _$$_PrecaucionPointFromJson(json);

  @override
  final String origen;
  @override
  @JsonKey(name: 'cod_ramal')
  final String codRamal;
  @override
  @JsonKey(name: 'km_desde')
  final double kmDesde;
  @override
  @JsonKey(name: 'km_hasta')
  final double kmHasta;
  @override
  @JsonKey(name: 'utm_x_desde')
  final double utmXDesde;
  @override
  @JsonKey(name: 'utm_y_desde')
  final double utmYDesde;
  @override
  @JsonKey(name: 'utm_x_hasta')
  final double utmXHasta;
  @override
  @JsonKey(name: 'utm_y_hasta')
  final double utmYHasta;
  @override
  @JsonKey(name: 'lat_desde')
  final double latDesde;
  @override
  @JsonKey(name: 'lon_desde')
  final double lonDesde;
  @override
  @JsonKey(name: 'lat_hasta')
  final double latHasta;
  @override
  @JsonKey(name: 'lon_hasta')
  final double lonHasta;
  @JsonKey()
  @override
  final List<RamalPoint> listPoints;

  @override
  String toString() {
    return 'PrecaucionPoint(origen: $origen, codRamal: $codRamal, kmDesde: $kmDesde, kmHasta: $kmHasta, utmXDesde: $utmXDesde, utmYDesde: $utmYDesde, utmXHasta: $utmXHasta, utmYHasta: $utmYHasta, latDesde: $latDesde, lonDesde: $lonDesde, latHasta: $latHasta, lonHasta: $lonHasta, listPoints: $listPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrecaucionPoint &&
            const DeepCollectionEquality().equals(other.origen, origen) &&
            const DeepCollectionEquality().equals(other.codRamal, codRamal) &&
            const DeepCollectionEquality().equals(other.kmDesde, kmDesde) &&
            const DeepCollectionEquality().equals(other.kmHasta, kmHasta) &&
            const DeepCollectionEquality().equals(other.utmXDesde, utmXDesde) &&
            const DeepCollectionEquality().equals(other.utmYDesde, utmYDesde) &&
            const DeepCollectionEquality().equals(other.utmXHasta, utmXHasta) &&
            const DeepCollectionEquality().equals(other.utmYHasta, utmYHasta) &&
            const DeepCollectionEquality().equals(other.latDesde, latDesde) &&
            const DeepCollectionEquality().equals(other.lonDesde, lonDesde) &&
            const DeepCollectionEquality().equals(other.latHasta, latHasta) &&
            const DeepCollectionEquality().equals(other.lonHasta, lonHasta) &&
            const DeepCollectionEquality()
                .equals(other.listPoints, listPoints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(origen),
      const DeepCollectionEquality().hash(codRamal),
      const DeepCollectionEquality().hash(kmDesde),
      const DeepCollectionEquality().hash(kmHasta),
      const DeepCollectionEquality().hash(utmXDesde),
      const DeepCollectionEquality().hash(utmYDesde),
      const DeepCollectionEquality().hash(utmXHasta),
      const DeepCollectionEquality().hash(utmYHasta),
      const DeepCollectionEquality().hash(latDesde),
      const DeepCollectionEquality().hash(lonDesde),
      const DeepCollectionEquality().hash(latHasta),
      const DeepCollectionEquality().hash(lonHasta),
      const DeepCollectionEquality().hash(listPoints));

  @JsonKey(ignore: true)
  @override
  _$PrecaucionPointCopyWith<_PrecaucionPoint> get copyWith =>
      __$PrecaucionPointCopyWithImpl<_PrecaucionPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrecaucionPointToJson(this);
  }
}

abstract class _PrecaucionPoint implements PrecaucionPoint {
  factory _PrecaucionPoint(
      {required String origen,
      @JsonKey(name: 'cod_ramal') required String codRamal,
      @JsonKey(name: 'km_desde') required double kmDesde,
      @JsonKey(name: 'km_hasta') required double kmHasta,
      @JsonKey(name: 'utm_x_desde') required double utmXDesde,
      @JsonKey(name: 'utm_y_desde') required double utmYDesde,
      @JsonKey(name: 'utm_x_hasta') required double utmXHasta,
      @JsonKey(name: 'utm_y_hasta') required double utmYHasta,
      @JsonKey(name: 'lat_desde') required double latDesde,
      @JsonKey(name: 'lon_desde') required double lonDesde,
      @JsonKey(name: 'lat_hasta') required double latHasta,
      @JsonKey(name: 'lon_hasta') required double lonHasta,
      List<RamalPoint> listPoints}) = _$_PrecaucionPoint;

  factory _PrecaucionPoint.fromJson(Map<String, dynamic> json) =
      _$_PrecaucionPoint.fromJson;

  @override
  String get origen;
  @override
  @JsonKey(name: 'cod_ramal')
  String get codRamal;
  @override
  @JsonKey(name: 'km_desde')
  double get kmDesde;
  @override
  @JsonKey(name: 'km_hasta')
  double get kmHasta;
  @override
  @JsonKey(name: 'utm_x_desde')
  double get utmXDesde;
  @override
  @JsonKey(name: 'utm_y_desde')
  double get utmYDesde;
  @override
  @JsonKey(name: 'utm_x_hasta')
  double get utmXHasta;
  @override
  @JsonKey(name: 'utm_y_hasta')
  double get utmYHasta;
  @override
  @JsonKey(name: 'lat_desde')
  double get latDesde;
  @override
  @JsonKey(name: 'lon_desde')
  double get lonDesde;
  @override
  @JsonKey(name: 'lat_hasta')
  double get latHasta;
  @override
  @JsonKey(name: 'lon_hasta')
  double get lonHasta;
  @override
  List<RamalPoint> get listPoints;
  @override
  @JsonKey(ignore: true)
  _$PrecaucionPointCopyWith<_PrecaucionPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
