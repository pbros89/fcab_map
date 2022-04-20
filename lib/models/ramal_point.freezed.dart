// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ramal_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RamalPoint _$RamalPointFromJson(Map<String, dynamic> json) {
  return _RamalPoint.fromJson(json);
}

/// @nodoc
class _$RamalPointTearOff {
  const _$RamalPointTearOff();

  _RamalPoint call(
      {@JsonKey(name: 'cod_ramal') required String codRamal,
      @JsonKey(name: 'utm_x') required double utmX,
      @JsonKey(name: 'utm_y') required double utmY,
      @JsonKey(name: 'kilometraje') required double kilometraje,
      @JsonKey(name: 'velocidad_max') required double velocidadMax,
      required double lat,
      required double lon}) {
    return _RamalPoint(
      codRamal: codRamal,
      utmX: utmX,
      utmY: utmY,
      kilometraje: kilometraje,
      velocidadMax: velocidadMax,
      lat: lat,
      lon: lon,
    );
  }

  RamalPoint fromJson(Map<String, Object?> json) {
    return RamalPoint.fromJson(json);
  }
}

/// @nodoc
const $RamalPoint = _$RamalPointTearOff();

/// @nodoc
mixin _$RamalPoint {
  @JsonKey(name: 'cod_ramal')
  String get codRamal => throw _privateConstructorUsedError;
  @JsonKey(name: 'utm_x')
  double get utmX => throw _privateConstructorUsedError;
  @JsonKey(name: 'utm_y')
  double get utmY => throw _privateConstructorUsedError;
  @JsonKey(name: 'kilometraje')
  double get kilometraje => throw _privateConstructorUsedError;
  @JsonKey(name: 'velocidad_max')
  double get velocidadMax => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RamalPointCopyWith<RamalPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RamalPointCopyWith<$Res> {
  factory $RamalPointCopyWith(
          RamalPoint value, $Res Function(RamalPoint) then) =
      _$RamalPointCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'cod_ramal') String codRamal,
      @JsonKey(name: 'utm_x') double utmX,
      @JsonKey(name: 'utm_y') double utmY,
      @JsonKey(name: 'kilometraje') double kilometraje,
      @JsonKey(name: 'velocidad_max') double velocidadMax,
      double lat,
      double lon});
}

/// @nodoc
class _$RamalPointCopyWithImpl<$Res> implements $RamalPointCopyWith<$Res> {
  _$RamalPointCopyWithImpl(this._value, this._then);

  final RamalPoint _value;
  // ignore: unused_field
  final $Res Function(RamalPoint) _then;

  @override
  $Res call({
    Object? codRamal = freezed,
    Object? utmX = freezed,
    Object? utmY = freezed,
    Object? kilometraje = freezed,
    Object? velocidadMax = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
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
      kilometraje: kilometraje == freezed
          ? _value.kilometraje
          : kilometraje // ignore: cast_nullable_to_non_nullable
              as double,
      velocidadMax: velocidadMax == freezed
          ? _value.velocidadMax
          : velocidadMax // ignore: cast_nullable_to_non_nullable
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
abstract class _$RamalPointCopyWith<$Res> implements $RamalPointCopyWith<$Res> {
  factory _$RamalPointCopyWith(
          _RamalPoint value, $Res Function(_RamalPoint) then) =
      __$RamalPointCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'cod_ramal') String codRamal,
      @JsonKey(name: 'utm_x') double utmX,
      @JsonKey(name: 'utm_y') double utmY,
      @JsonKey(name: 'kilometraje') double kilometraje,
      @JsonKey(name: 'velocidad_max') double velocidadMax,
      double lat,
      double lon});
}

/// @nodoc
class __$RamalPointCopyWithImpl<$Res> extends _$RamalPointCopyWithImpl<$Res>
    implements _$RamalPointCopyWith<$Res> {
  __$RamalPointCopyWithImpl(
      _RamalPoint _value, $Res Function(_RamalPoint) _then)
      : super(_value, (v) => _then(v as _RamalPoint));

  @override
  _RamalPoint get _value => super._value as _RamalPoint;

  @override
  $Res call({
    Object? codRamal = freezed,
    Object? utmX = freezed,
    Object? utmY = freezed,
    Object? kilometraje = freezed,
    Object? velocidadMax = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_RamalPoint(
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
      kilometraje: kilometraje == freezed
          ? _value.kilometraje
          : kilometraje // ignore: cast_nullable_to_non_nullable
              as double,
      velocidadMax: velocidadMax == freezed
          ? _value.velocidadMax
          : velocidadMax // ignore: cast_nullable_to_non_nullable
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
class _$_RamalPoint implements _RamalPoint {
  _$_RamalPoint(
      {@JsonKey(name: 'cod_ramal') required this.codRamal,
      @JsonKey(name: 'utm_x') required this.utmX,
      @JsonKey(name: 'utm_y') required this.utmY,
      @JsonKey(name: 'kilometraje') required this.kilometraje,
      @JsonKey(name: 'velocidad_max') required this.velocidadMax,
      required this.lat,
      required this.lon});

  factory _$_RamalPoint.fromJson(Map<String, dynamic> json) =>
      _$$_RamalPointFromJson(json);

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
  @JsonKey(name: 'kilometraje')
  final double kilometraje;
  @override
  @JsonKey(name: 'velocidad_max')
  final double velocidadMax;
  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString() {
    return 'RamalPoint(codRamal: $codRamal, utmX: $utmX, utmY: $utmY, kilometraje: $kilometraje, velocidadMax: $velocidadMax, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RamalPoint &&
            const DeepCollectionEquality().equals(other.codRamal, codRamal) &&
            const DeepCollectionEquality().equals(other.utmX, utmX) &&
            const DeepCollectionEquality().equals(other.utmY, utmY) &&
            const DeepCollectionEquality()
                .equals(other.kilometraje, kilometraje) &&
            const DeepCollectionEquality()
                .equals(other.velocidadMax, velocidadMax) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(codRamal),
      const DeepCollectionEquality().hash(utmX),
      const DeepCollectionEquality().hash(utmY),
      const DeepCollectionEquality().hash(kilometraje),
      const DeepCollectionEquality().hash(velocidadMax),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon));

  @JsonKey(ignore: true)
  @override
  _$RamalPointCopyWith<_RamalPoint> get copyWith =>
      __$RamalPointCopyWithImpl<_RamalPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RamalPointToJson(this);
  }
}

abstract class _RamalPoint implements RamalPoint {
  factory _RamalPoint(
      {@JsonKey(name: 'cod_ramal') required String codRamal,
      @JsonKey(name: 'utm_x') required double utmX,
      @JsonKey(name: 'utm_y') required double utmY,
      @JsonKey(name: 'kilometraje') required double kilometraje,
      @JsonKey(name: 'velocidad_max') required double velocidadMax,
      required double lat,
      required double lon}) = _$_RamalPoint;

  factory _RamalPoint.fromJson(Map<String, dynamic> json) =
      _$_RamalPoint.fromJson;

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
  @JsonKey(name: 'kilometraje')
  double get kilometraje;
  @override
  @JsonKey(name: 'velocidad_max')
  double get velocidadMax;
  @override
  double get lat;
  @override
  double get lon;
  @override
  @JsonKey(ignore: true)
  _$RamalPointCopyWith<_RamalPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
