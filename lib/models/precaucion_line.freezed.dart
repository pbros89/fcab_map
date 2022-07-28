// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'precaucion_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrecaucionLine _$PrecaucionLineFromJson(Map<String, dynamic> json) {
  return _PrecaucionLine.fromJson(json);
}

/// @nodoc
mixin _$PrecaucionLine {
  @JsonKey(name: 'tipo', defaultValue: '')
  String get tipo => throw _privateConstructorUsedError;
  @JsonKey(name: 'cod_ramal', defaultValue: '')
  String get codRamal => throw _privateConstructorUsedError;
  @JsonKey(name: 'km_desde', defaultValue: 0.0)
  double get kmDesde => throw _privateConstructorUsedError;
  @JsonKey(name: 'km_hasta', defaultValue: 0.0)
  double get kmHasta => throw _privateConstructorUsedError;
  @JsonKey(name: 'numero', defaultValue: 0)
  int get numero => throw _privateConstructorUsedError;
  @JsonKey(name: 'velocidad', defaultValue: 0)
  int get velocidad => throw _privateConstructorUsedError;
  @JsonKey(name: 'causa', defaultValue: '')
  String get causa => throw _privateConstructorUsedError;
  @JsonKey(name: 'observacion', defaultValue: '')
  String get observacion => throw _privateConstructorUsedError;
  @JsonKey(name: 'activa', defaultValue: '')
  String get activa => throw _privateConstructorUsedError;
  @JsonKey(name: 'factiva', defaultValue: '')
  String get factiva => throw _privateConstructorUsedError;
  @JsonKey(name: 'sentido', defaultValue: '')
  String get sentido => throw _privateConstructorUsedError;
  List<RamalPoint> get listPoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrecaucionLineCopyWith<PrecaucionLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrecaucionLineCopyWith<$Res> {
  factory $PrecaucionLineCopyWith(
          PrecaucionLine value, $Res Function(PrecaucionLine) then) =
      _$PrecaucionLineCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'tipo', defaultValue: '') String tipo,
      @JsonKey(name: 'cod_ramal', defaultValue: '') String codRamal,
      @JsonKey(name: 'km_desde', defaultValue: 0.0) double kmDesde,
      @JsonKey(name: 'km_hasta', defaultValue: 0.0) double kmHasta,
      @JsonKey(name: 'numero', defaultValue: 0) int numero,
      @JsonKey(name: 'velocidad', defaultValue: 0) int velocidad,
      @JsonKey(name: 'causa', defaultValue: '') String causa,
      @JsonKey(name: 'observacion', defaultValue: '') String observacion,
      @JsonKey(name: 'activa', defaultValue: '') String activa,
      @JsonKey(name: 'factiva', defaultValue: '') String factiva,
      @JsonKey(name: 'sentido', defaultValue: '') String sentido,
      List<RamalPoint> listPoints});
}

/// @nodoc
class _$PrecaucionLineCopyWithImpl<$Res>
    implements $PrecaucionLineCopyWith<$Res> {
  _$PrecaucionLineCopyWithImpl(this._value, this._then);

  final PrecaucionLine _value;
  // ignore: unused_field
  final $Res Function(PrecaucionLine) _then;

  @override
  $Res call({
    Object? tipo = freezed,
    Object? codRamal = freezed,
    Object? kmDesde = freezed,
    Object? kmHasta = freezed,
    Object? numero = freezed,
    Object? velocidad = freezed,
    Object? causa = freezed,
    Object? observacion = freezed,
    Object? activa = freezed,
    Object? factiva = freezed,
    Object? sentido = freezed,
    Object? listPoints = freezed,
  }) {
    return _then(_value.copyWith(
      tipo: tipo == freezed
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
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
      numero: numero == freezed
          ? _value.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as int,
      velocidad: velocidad == freezed
          ? _value.velocidad
          : velocidad // ignore: cast_nullable_to_non_nullable
              as int,
      causa: causa == freezed
          ? _value.causa
          : causa // ignore: cast_nullable_to_non_nullable
              as String,
      observacion: observacion == freezed
          ? _value.observacion
          : observacion // ignore: cast_nullable_to_non_nullable
              as String,
      activa: activa == freezed
          ? _value.activa
          : activa // ignore: cast_nullable_to_non_nullable
              as String,
      factiva: factiva == freezed
          ? _value.factiva
          : factiva // ignore: cast_nullable_to_non_nullable
              as String,
      sentido: sentido == freezed
          ? _value.sentido
          : sentido // ignore: cast_nullable_to_non_nullable
              as String,
      listPoints: listPoints == freezed
          ? _value.listPoints
          : listPoints // ignore: cast_nullable_to_non_nullable
              as List<RamalPoint>,
    ));
  }
}

/// @nodoc
abstract class _$$_PrecaucionLineCopyWith<$Res>
    implements $PrecaucionLineCopyWith<$Res> {
  factory _$$_PrecaucionLineCopyWith(
          _$_PrecaucionLine value, $Res Function(_$_PrecaucionLine) then) =
      __$$_PrecaucionLineCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'tipo', defaultValue: '') String tipo,
      @JsonKey(name: 'cod_ramal', defaultValue: '') String codRamal,
      @JsonKey(name: 'km_desde', defaultValue: 0.0) double kmDesde,
      @JsonKey(name: 'km_hasta', defaultValue: 0.0) double kmHasta,
      @JsonKey(name: 'numero', defaultValue: 0) int numero,
      @JsonKey(name: 'velocidad', defaultValue: 0) int velocidad,
      @JsonKey(name: 'causa', defaultValue: '') String causa,
      @JsonKey(name: 'observacion', defaultValue: '') String observacion,
      @JsonKey(name: 'activa', defaultValue: '') String activa,
      @JsonKey(name: 'factiva', defaultValue: '') String factiva,
      @JsonKey(name: 'sentido', defaultValue: '') String sentido,
      List<RamalPoint> listPoints});
}

/// @nodoc
class __$$_PrecaucionLineCopyWithImpl<$Res>
    extends _$PrecaucionLineCopyWithImpl<$Res>
    implements _$$_PrecaucionLineCopyWith<$Res> {
  __$$_PrecaucionLineCopyWithImpl(
      _$_PrecaucionLine _value, $Res Function(_$_PrecaucionLine) _then)
      : super(_value, (v) => _then(v as _$_PrecaucionLine));

  @override
  _$_PrecaucionLine get _value => super._value as _$_PrecaucionLine;

  @override
  $Res call({
    Object? tipo = freezed,
    Object? codRamal = freezed,
    Object? kmDesde = freezed,
    Object? kmHasta = freezed,
    Object? numero = freezed,
    Object? velocidad = freezed,
    Object? causa = freezed,
    Object? observacion = freezed,
    Object? activa = freezed,
    Object? factiva = freezed,
    Object? sentido = freezed,
    Object? listPoints = freezed,
  }) {
    return _then(_$_PrecaucionLine(
      tipo: tipo == freezed
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
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
      numero: numero == freezed
          ? _value.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as int,
      velocidad: velocidad == freezed
          ? _value.velocidad
          : velocidad // ignore: cast_nullable_to_non_nullable
              as int,
      causa: causa == freezed
          ? _value.causa
          : causa // ignore: cast_nullable_to_non_nullable
              as String,
      observacion: observacion == freezed
          ? _value.observacion
          : observacion // ignore: cast_nullable_to_non_nullable
              as String,
      activa: activa == freezed
          ? _value.activa
          : activa // ignore: cast_nullable_to_non_nullable
              as String,
      factiva: factiva == freezed
          ? _value.factiva
          : factiva // ignore: cast_nullable_to_non_nullable
              as String,
      sentido: sentido == freezed
          ? _value.sentido
          : sentido // ignore: cast_nullable_to_non_nullable
              as String,
      listPoints: listPoints == freezed
          ? _value._listPoints
          : listPoints // ignore: cast_nullable_to_non_nullable
              as List<RamalPoint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrecaucionLine implements _PrecaucionLine {
  _$_PrecaucionLine(
      {@JsonKey(name: 'tipo', defaultValue: '') required this.tipo,
      @JsonKey(name: 'cod_ramal', defaultValue: '') required this.codRamal,
      @JsonKey(name: 'km_desde', defaultValue: 0.0) required this.kmDesde,
      @JsonKey(name: 'km_hasta', defaultValue: 0.0) required this.kmHasta,
      @JsonKey(name: 'numero', defaultValue: 0) required this.numero,
      @JsonKey(name: 'velocidad', defaultValue: 0) required this.velocidad,
      @JsonKey(name: 'causa', defaultValue: '') required this.causa,
      @JsonKey(name: 'observacion', defaultValue: '') required this.observacion,
      @JsonKey(name: 'activa', defaultValue: '') required this.activa,
      @JsonKey(name: 'factiva', defaultValue: '') required this.factiva,
      @JsonKey(name: 'sentido', defaultValue: '') required this.sentido,
      final List<RamalPoint> listPoints = const []})
      : _listPoints = listPoints;

  factory _$_PrecaucionLine.fromJson(Map<String, dynamic> json) =>
      _$$_PrecaucionLineFromJson(json);

  @override
  @JsonKey(name: 'tipo', defaultValue: '')
  final String tipo;
  @override
  @JsonKey(name: 'cod_ramal', defaultValue: '')
  final String codRamal;
  @override
  @JsonKey(name: 'km_desde', defaultValue: 0.0)
  final double kmDesde;
  @override
  @JsonKey(name: 'km_hasta', defaultValue: 0.0)
  final double kmHasta;
  @override
  @JsonKey(name: 'numero', defaultValue: 0)
  final int numero;
  @override
  @JsonKey(name: 'velocidad', defaultValue: 0)
  final int velocidad;
  @override
  @JsonKey(name: 'causa', defaultValue: '')
  final String causa;
  @override
  @JsonKey(name: 'observacion', defaultValue: '')
  final String observacion;
  @override
  @JsonKey(name: 'activa', defaultValue: '')
  final String activa;
  @override
  @JsonKey(name: 'factiva', defaultValue: '')
  final String factiva;
  @override
  @JsonKey(name: 'sentido', defaultValue: '')
  final String sentido;
  final List<RamalPoint> _listPoints;
  @override
  @JsonKey()
  List<RamalPoint> get listPoints {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listPoints);
  }

  @override
  String toString() {
    return 'PrecaucionLine(tipo: $tipo, codRamal: $codRamal, kmDesde: $kmDesde, kmHasta: $kmHasta, numero: $numero, velocidad: $velocidad, causa: $causa, observacion: $observacion, activa: $activa, factiva: $factiva, sentido: $sentido, listPoints: $listPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrecaucionLine &&
            const DeepCollectionEquality().equals(other.tipo, tipo) &&
            const DeepCollectionEquality().equals(other.codRamal, codRamal) &&
            const DeepCollectionEquality().equals(other.kmDesde, kmDesde) &&
            const DeepCollectionEquality().equals(other.kmHasta, kmHasta) &&
            const DeepCollectionEquality().equals(other.numero, numero) &&
            const DeepCollectionEquality().equals(other.velocidad, velocidad) &&
            const DeepCollectionEquality().equals(other.causa, causa) &&
            const DeepCollectionEquality()
                .equals(other.observacion, observacion) &&
            const DeepCollectionEquality().equals(other.activa, activa) &&
            const DeepCollectionEquality().equals(other.factiva, factiva) &&
            const DeepCollectionEquality().equals(other.sentido, sentido) &&
            const DeepCollectionEquality()
                .equals(other._listPoints, _listPoints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tipo),
      const DeepCollectionEquality().hash(codRamal),
      const DeepCollectionEquality().hash(kmDesde),
      const DeepCollectionEquality().hash(kmHasta),
      const DeepCollectionEquality().hash(numero),
      const DeepCollectionEquality().hash(velocidad),
      const DeepCollectionEquality().hash(causa),
      const DeepCollectionEquality().hash(observacion),
      const DeepCollectionEquality().hash(activa),
      const DeepCollectionEquality().hash(factiva),
      const DeepCollectionEquality().hash(sentido),
      const DeepCollectionEquality().hash(_listPoints));

  @JsonKey(ignore: true)
  @override
  _$$_PrecaucionLineCopyWith<_$_PrecaucionLine> get copyWith =>
      __$$_PrecaucionLineCopyWithImpl<_$_PrecaucionLine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrecaucionLineToJson(this);
  }
}

abstract class _PrecaucionLine implements PrecaucionLine {
  factory _PrecaucionLine(
      {@JsonKey(name: 'tipo', defaultValue: '')
          required final String tipo,
      @JsonKey(name: 'cod_ramal', defaultValue: '')
          required final String codRamal,
      @JsonKey(name: 'km_desde', defaultValue: 0.0)
          required final double kmDesde,
      @JsonKey(name: 'km_hasta', defaultValue: 0.0)
          required final double kmHasta,
      @JsonKey(name: 'numero', defaultValue: 0)
          required final int numero,
      @JsonKey(name: 'velocidad', defaultValue: 0)
          required final int velocidad,
      @JsonKey(name: 'causa', defaultValue: '')
          required final String causa,
      @JsonKey(name: 'observacion', defaultValue: '')
          required final String observacion,
      @JsonKey(name: 'activa', defaultValue: '')
          required final String activa,
      @JsonKey(name: 'factiva', defaultValue: '')
          required final String factiva,
      @JsonKey(name: 'sentido', defaultValue: '')
          required final String sentido,
      final List<RamalPoint> listPoints}) = _$_PrecaucionLine;

  factory _PrecaucionLine.fromJson(Map<String, dynamic> json) =
      _$_PrecaucionLine.fromJson;

  @override
  @JsonKey(name: 'tipo', defaultValue: '')
  String get tipo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'cod_ramal', defaultValue: '')
  String get codRamal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'km_desde', defaultValue: 0.0)
  double get kmDesde => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'km_hasta', defaultValue: 0.0)
  double get kmHasta => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'numero', defaultValue: 0)
  int get numero => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'velocidad', defaultValue: 0)
  int get velocidad => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'causa', defaultValue: '')
  String get causa => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'observacion', defaultValue: '')
  String get observacion => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'activa', defaultValue: '')
  String get activa => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'factiva', defaultValue: '')
  String get factiva => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sentido', defaultValue: '')
  String get sentido => throw _privateConstructorUsedError;
  @override
  List<RamalPoint> get listPoints => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PrecaucionLineCopyWith<_$_PrecaucionLine> get copyWith =>
      throw _privateConstructorUsedError;
}
