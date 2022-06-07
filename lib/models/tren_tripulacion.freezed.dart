// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tren_tripulacion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrenTripulacion _$TrenTripulacionFromJson(Map<String, dynamic> json) {
  return _TrenTripulacion.fromJson(json);
}

/// @nodoc
class _$TrenTripulacionTearOff {
  const _$TrenTripulacionTearOff();

  _TrenTripulacion call(
      {@JsonKey(name: 'nro_tren', defaultValue: 0)
          required int nroTren,
      @JsonKey(name: 'nro_tripulacion', defaultValue: 0)
          required int nroTripulacion,
      @JsonKey(name: 'nom_oper', defaultValue: '')
          required String nomOper,
      @JsonKey(name: 'hora_toma', defaultValue: '')
          required String horaToma,
      @JsonKey(name: 'codrut', defaultValue: '')
          required String codrut,
      @JsonKey(name: 'tipo_operador', defaultValue: '')
          required String tipoOperador}) {
    return _TrenTripulacion(
      nroTren: nroTren,
      nroTripulacion: nroTripulacion,
      nomOper: nomOper,
      horaToma: horaToma,
      codrut: codrut,
      tipoOperador: tipoOperador,
    );
  }

  TrenTripulacion fromJson(Map<String, Object?> json) {
    return TrenTripulacion.fromJson(json);
  }
}

/// @nodoc
const $TrenTripulacion = _$TrenTripulacionTearOff();

/// @nodoc
mixin _$TrenTripulacion {
  @JsonKey(name: 'nro_tren', defaultValue: 0)
  int get nroTren => throw _privateConstructorUsedError;
  @JsonKey(name: 'nro_tripulacion', defaultValue: 0)
  int get nroTripulacion => throw _privateConstructorUsedError;
  @JsonKey(name: 'nom_oper', defaultValue: '')
  String get nomOper => throw _privateConstructorUsedError;
  @JsonKey(name: 'hora_toma', defaultValue: '')
  String get horaToma => throw _privateConstructorUsedError;
  @JsonKey(name: 'codrut', defaultValue: '')
  String get codrut => throw _privateConstructorUsedError;
  @JsonKey(name: 'tipo_operador', defaultValue: '')
  String get tipoOperador => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrenTripulacionCopyWith<TrenTripulacion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrenTripulacionCopyWith<$Res> {
  factory $TrenTripulacionCopyWith(
          TrenTripulacion value, $Res Function(TrenTripulacion) then) =
      _$TrenTripulacionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'nro_tren', defaultValue: 0) int nroTren,
      @JsonKey(name: 'nro_tripulacion', defaultValue: 0) int nroTripulacion,
      @JsonKey(name: 'nom_oper', defaultValue: '') String nomOper,
      @JsonKey(name: 'hora_toma', defaultValue: '') String horaToma,
      @JsonKey(name: 'codrut', defaultValue: '') String codrut,
      @JsonKey(name: 'tipo_operador', defaultValue: '') String tipoOperador});
}

/// @nodoc
class _$TrenTripulacionCopyWithImpl<$Res>
    implements $TrenTripulacionCopyWith<$Res> {
  _$TrenTripulacionCopyWithImpl(this._value, this._then);

  final TrenTripulacion _value;
  // ignore: unused_field
  final $Res Function(TrenTripulacion) _then;

  @override
  $Res call({
    Object? nroTren = freezed,
    Object? nroTripulacion = freezed,
    Object? nomOper = freezed,
    Object? horaToma = freezed,
    Object? codrut = freezed,
    Object? tipoOperador = freezed,
  }) {
    return _then(_value.copyWith(
      nroTren: nroTren == freezed
          ? _value.nroTren
          : nroTren // ignore: cast_nullable_to_non_nullable
              as int,
      nroTripulacion: nroTripulacion == freezed
          ? _value.nroTripulacion
          : nroTripulacion // ignore: cast_nullable_to_non_nullable
              as int,
      nomOper: nomOper == freezed
          ? _value.nomOper
          : nomOper // ignore: cast_nullable_to_non_nullable
              as String,
      horaToma: horaToma == freezed
          ? _value.horaToma
          : horaToma // ignore: cast_nullable_to_non_nullable
              as String,
      codrut: codrut == freezed
          ? _value.codrut
          : codrut // ignore: cast_nullable_to_non_nullable
              as String,
      tipoOperador: tipoOperador == freezed
          ? _value.tipoOperador
          : tipoOperador // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TrenTripulacionCopyWith<$Res>
    implements $TrenTripulacionCopyWith<$Res> {
  factory _$TrenTripulacionCopyWith(
          _TrenTripulacion value, $Res Function(_TrenTripulacion) then) =
      __$TrenTripulacionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'nro_tren', defaultValue: 0) int nroTren,
      @JsonKey(name: 'nro_tripulacion', defaultValue: 0) int nroTripulacion,
      @JsonKey(name: 'nom_oper', defaultValue: '') String nomOper,
      @JsonKey(name: 'hora_toma', defaultValue: '') String horaToma,
      @JsonKey(name: 'codrut', defaultValue: '') String codrut,
      @JsonKey(name: 'tipo_operador', defaultValue: '') String tipoOperador});
}

/// @nodoc
class __$TrenTripulacionCopyWithImpl<$Res>
    extends _$TrenTripulacionCopyWithImpl<$Res>
    implements _$TrenTripulacionCopyWith<$Res> {
  __$TrenTripulacionCopyWithImpl(
      _TrenTripulacion _value, $Res Function(_TrenTripulacion) _then)
      : super(_value, (v) => _then(v as _TrenTripulacion));

  @override
  _TrenTripulacion get _value => super._value as _TrenTripulacion;

  @override
  $Res call({
    Object? nroTren = freezed,
    Object? nroTripulacion = freezed,
    Object? nomOper = freezed,
    Object? horaToma = freezed,
    Object? codrut = freezed,
    Object? tipoOperador = freezed,
  }) {
    return _then(_TrenTripulacion(
      nroTren: nroTren == freezed
          ? _value.nroTren
          : nroTren // ignore: cast_nullable_to_non_nullable
              as int,
      nroTripulacion: nroTripulacion == freezed
          ? _value.nroTripulacion
          : nroTripulacion // ignore: cast_nullable_to_non_nullable
              as int,
      nomOper: nomOper == freezed
          ? _value.nomOper
          : nomOper // ignore: cast_nullable_to_non_nullable
              as String,
      horaToma: horaToma == freezed
          ? _value.horaToma
          : horaToma // ignore: cast_nullable_to_non_nullable
              as String,
      codrut: codrut == freezed
          ? _value.codrut
          : codrut // ignore: cast_nullable_to_non_nullable
              as String,
      tipoOperador: tipoOperador == freezed
          ? _value.tipoOperador
          : tipoOperador // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrenTripulacion implements _TrenTripulacion {
  _$_TrenTripulacion(
      {@JsonKey(name: 'nro_tren', defaultValue: 0)
          required this.nroTren,
      @JsonKey(name: 'nro_tripulacion', defaultValue: 0)
          required this.nroTripulacion,
      @JsonKey(name: 'nom_oper', defaultValue: '')
          required this.nomOper,
      @JsonKey(name: 'hora_toma', defaultValue: '')
          required this.horaToma,
      @JsonKey(name: 'codrut', defaultValue: '')
          required this.codrut,
      @JsonKey(name: 'tipo_operador', defaultValue: '')
          required this.tipoOperador});

  factory _$_TrenTripulacion.fromJson(Map<String, dynamic> json) =>
      _$$_TrenTripulacionFromJson(json);

  @override
  @JsonKey(name: 'nro_tren', defaultValue: 0)
  final int nroTren;
  @override
  @JsonKey(name: 'nro_tripulacion', defaultValue: 0)
  final int nroTripulacion;
  @override
  @JsonKey(name: 'nom_oper', defaultValue: '')
  final String nomOper;
  @override
  @JsonKey(name: 'hora_toma', defaultValue: '')
  final String horaToma;
  @override
  @JsonKey(name: 'codrut', defaultValue: '')
  final String codrut;
  @override
  @JsonKey(name: 'tipo_operador', defaultValue: '')
  final String tipoOperador;

  @override
  String toString() {
    return 'TrenTripulacion(nroTren: $nroTren, nroTripulacion: $nroTripulacion, nomOper: $nomOper, horaToma: $horaToma, codrut: $codrut, tipoOperador: $tipoOperador)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrenTripulacion &&
            const DeepCollectionEquality().equals(other.nroTren, nroTren) &&
            const DeepCollectionEquality()
                .equals(other.nroTripulacion, nroTripulacion) &&
            const DeepCollectionEquality().equals(other.nomOper, nomOper) &&
            const DeepCollectionEquality().equals(other.horaToma, horaToma) &&
            const DeepCollectionEquality().equals(other.codrut, codrut) &&
            const DeepCollectionEquality()
                .equals(other.tipoOperador, tipoOperador));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nroTren),
      const DeepCollectionEquality().hash(nroTripulacion),
      const DeepCollectionEquality().hash(nomOper),
      const DeepCollectionEquality().hash(horaToma),
      const DeepCollectionEquality().hash(codrut),
      const DeepCollectionEquality().hash(tipoOperador));

  @JsonKey(ignore: true)
  @override
  _$TrenTripulacionCopyWith<_TrenTripulacion> get copyWith =>
      __$TrenTripulacionCopyWithImpl<_TrenTripulacion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrenTripulacionToJson(this);
  }
}

abstract class _TrenTripulacion implements TrenTripulacion {
  factory _TrenTripulacion(
      {@JsonKey(name: 'nro_tren', defaultValue: 0)
          required int nroTren,
      @JsonKey(name: 'nro_tripulacion', defaultValue: 0)
          required int nroTripulacion,
      @JsonKey(name: 'nom_oper', defaultValue: '')
          required String nomOper,
      @JsonKey(name: 'hora_toma', defaultValue: '')
          required String horaToma,
      @JsonKey(name: 'codrut', defaultValue: '')
          required String codrut,
      @JsonKey(name: 'tipo_operador', defaultValue: '')
          required String tipoOperador}) = _$_TrenTripulacion;

  factory _TrenTripulacion.fromJson(Map<String, dynamic> json) =
      _$_TrenTripulacion.fromJson;

  @override
  @JsonKey(name: 'nro_tren', defaultValue: 0)
  int get nroTren;
  @override
  @JsonKey(name: 'nro_tripulacion', defaultValue: 0)
  int get nroTripulacion;
  @override
  @JsonKey(name: 'nom_oper', defaultValue: '')
  String get nomOper;
  @override
  @JsonKey(name: 'hora_toma', defaultValue: '')
  String get horaToma;
  @override
  @JsonKey(name: 'codrut', defaultValue: '')
  String get codrut;
  @override
  @JsonKey(name: 'tipo_operador', defaultValue: '')
  String get tipoOperador;
  @override
  @JsonKey(ignore: true)
  _$TrenTripulacionCopyWith<_TrenTripulacion> get copyWith =>
      throw _privateConstructorUsedError;
}
