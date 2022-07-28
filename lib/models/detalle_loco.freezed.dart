// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detalle_loco.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetalleLoco _$DetalleLocoFromJson(Map<String, dynamic> json) {
  return _DetalleLoco.fromJson(json);
}

/// @nodoc
mixin _$DetalleLoco {
  @JsonKey(name: 'estacion', defaultValue: '')
  String get estacion => throw _privateConstructorUsedError;
  @JsonKey(name: 'linea', defaultValue: '')
  String get linea => throw _privateConstructorUsedError;
  @JsonKey(name: 'loco', defaultValue: 0)
  int get loco => throw _privateConstructorUsedError;
  @JsonKey(name: 'color', defaultValue: '')
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'obs_marca', defaultValue: '')
  String get obsMarca => throw _privateConstructorUsedError;
  @JsonKey(name: 'mar_mante', defaultValue: '')
  String get marMante => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetalleLocoCopyWith<DetalleLoco> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetalleLocoCopyWith<$Res> {
  factory $DetalleLocoCopyWith(
          DetalleLoco value, $Res Function(DetalleLoco) then) =
      _$DetalleLocoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'estacion', defaultValue: '') String estacion,
      @JsonKey(name: 'linea', defaultValue: '') String linea,
      @JsonKey(name: 'loco', defaultValue: 0) int loco,
      @JsonKey(name: 'color', defaultValue: '') String color,
      @JsonKey(name: 'obs_marca', defaultValue: '') String obsMarca,
      @JsonKey(name: 'mar_mante', defaultValue: '') String marMante});
}

/// @nodoc
class _$DetalleLocoCopyWithImpl<$Res> implements $DetalleLocoCopyWith<$Res> {
  _$DetalleLocoCopyWithImpl(this._value, this._then);

  final DetalleLoco _value;
  // ignore: unused_field
  final $Res Function(DetalleLoco) _then;

  @override
  $Res call({
    Object? estacion = freezed,
    Object? linea = freezed,
    Object? loco = freezed,
    Object? color = freezed,
    Object? obsMarca = freezed,
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
      loco: loco == freezed
          ? _value.loco
          : loco // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      obsMarca: obsMarca == freezed
          ? _value.obsMarca
          : obsMarca // ignore: cast_nullable_to_non_nullable
              as String,
      marMante: marMante == freezed
          ? _value.marMante
          : marMante // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DetalleLocoCopyWith<$Res>
    implements $DetalleLocoCopyWith<$Res> {
  factory _$$_DetalleLocoCopyWith(
          _$_DetalleLoco value, $Res Function(_$_DetalleLoco) then) =
      __$$_DetalleLocoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'estacion', defaultValue: '') String estacion,
      @JsonKey(name: 'linea', defaultValue: '') String linea,
      @JsonKey(name: 'loco', defaultValue: 0) int loco,
      @JsonKey(name: 'color', defaultValue: '') String color,
      @JsonKey(name: 'obs_marca', defaultValue: '') String obsMarca,
      @JsonKey(name: 'mar_mante', defaultValue: '') String marMante});
}

/// @nodoc
class __$$_DetalleLocoCopyWithImpl<$Res> extends _$DetalleLocoCopyWithImpl<$Res>
    implements _$$_DetalleLocoCopyWith<$Res> {
  __$$_DetalleLocoCopyWithImpl(
      _$_DetalleLoco _value, $Res Function(_$_DetalleLoco) _then)
      : super(_value, (v) => _then(v as _$_DetalleLoco));

  @override
  _$_DetalleLoco get _value => super._value as _$_DetalleLoco;

  @override
  $Res call({
    Object? estacion = freezed,
    Object? linea = freezed,
    Object? loco = freezed,
    Object? color = freezed,
    Object? obsMarca = freezed,
    Object? marMante = freezed,
  }) {
    return _then(_$_DetalleLoco(
      estacion: estacion == freezed
          ? _value.estacion
          : estacion // ignore: cast_nullable_to_non_nullable
              as String,
      linea: linea == freezed
          ? _value.linea
          : linea // ignore: cast_nullable_to_non_nullable
              as String,
      loco: loco == freezed
          ? _value.loco
          : loco // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      obsMarca: obsMarca == freezed
          ? _value.obsMarca
          : obsMarca // ignore: cast_nullable_to_non_nullable
              as String,
      marMante: marMante == freezed
          ? _value.marMante
          : marMante // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetalleLoco implements _DetalleLoco {
  _$_DetalleLoco(
      {@JsonKey(name: 'estacion', defaultValue: '') required this.estacion,
      @JsonKey(name: 'linea', defaultValue: '') required this.linea,
      @JsonKey(name: 'loco', defaultValue: 0) required this.loco,
      @JsonKey(name: 'color', defaultValue: '') required this.color,
      @JsonKey(name: 'obs_marca', defaultValue: '') required this.obsMarca,
      @JsonKey(name: 'mar_mante', defaultValue: '') required this.marMante});

  factory _$_DetalleLoco.fromJson(Map<String, dynamic> json) =>
      _$$_DetalleLocoFromJson(json);

  @override
  @JsonKey(name: 'estacion', defaultValue: '')
  final String estacion;
  @override
  @JsonKey(name: 'linea', defaultValue: '')
  final String linea;
  @override
  @JsonKey(name: 'loco', defaultValue: 0)
  final int loco;
  @override
  @JsonKey(name: 'color', defaultValue: '')
  final String color;
  @override
  @JsonKey(name: 'obs_marca', defaultValue: '')
  final String obsMarca;
  @override
  @JsonKey(name: 'mar_mante', defaultValue: '')
  final String marMante;

  @override
  String toString() {
    return 'DetalleLoco(estacion: $estacion, linea: $linea, loco: $loco, color: $color, obsMarca: $obsMarca, marMante: $marMante)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetalleLoco &&
            const DeepCollectionEquality().equals(other.estacion, estacion) &&
            const DeepCollectionEquality().equals(other.linea, linea) &&
            const DeepCollectionEquality().equals(other.loco, loco) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.obsMarca, obsMarca) &&
            const DeepCollectionEquality().equals(other.marMante, marMante));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(estacion),
      const DeepCollectionEquality().hash(linea),
      const DeepCollectionEquality().hash(loco),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(obsMarca),
      const DeepCollectionEquality().hash(marMante));

  @JsonKey(ignore: true)
  @override
  _$$_DetalleLocoCopyWith<_$_DetalleLoco> get copyWith =>
      __$$_DetalleLocoCopyWithImpl<_$_DetalleLoco>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetalleLocoToJson(this);
  }
}

abstract class _DetalleLoco implements DetalleLoco {
  factory _DetalleLoco(
      {@JsonKey(name: 'estacion', defaultValue: '')
          required final String estacion,
      @JsonKey(name: 'linea', defaultValue: '')
          required final String linea,
      @JsonKey(name: 'loco', defaultValue: 0)
          required final int loco,
      @JsonKey(name: 'color', defaultValue: '')
          required final String color,
      @JsonKey(name: 'obs_marca', defaultValue: '')
          required final String obsMarca,
      @JsonKey(name: 'mar_mante', defaultValue: '')
          required final String marMante}) = _$_DetalleLoco;

  factory _DetalleLoco.fromJson(Map<String, dynamic> json) =
      _$_DetalleLoco.fromJson;

  @override
  @JsonKey(name: 'estacion', defaultValue: '')
  String get estacion => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'linea', defaultValue: '')
  String get linea => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'loco', defaultValue: 0)
  int get loco => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'color', defaultValue: '')
  String get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'obs_marca', defaultValue: '')
  String get obsMarca => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'mar_mante', defaultValue: '')
  String get marMante => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DetalleLocoCopyWith<_$_DetalleLoco> get copyWith =>
      throw _privateConstructorUsedError;
}
