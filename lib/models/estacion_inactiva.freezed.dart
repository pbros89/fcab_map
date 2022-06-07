// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'estacion_inactiva.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EstacionInactiva _$EstacionInactivaFromJson(Map<String, dynamic> json) {
  return _EstacionInactiva.fromJson(json);
}

/// @nodoc
class _$EstacionInactivaTearOff {
  const _$EstacionInactivaTearOff();

  _EstacionInactiva call(
      {@JsonKey(name: 'estacion', defaultValue: '')
          required String estacion,
      @JsonKey(name: 'fecha_crea', defaultValue: '')
          required String fechaCrea,
      @JsonKey(name: 'restriccion', defaultValue: '')
          required String restriccion,
      @JsonKey(name: 'usuario_crea', defaultValue: '')
          required String usuarioCrea,
      @JsonKey(name: 'tipo', defaultValue: '')
          required String tipo,
      @JsonKey(name: 'habilitado', defaultValue: '')
          required String habilitado,
      @JsonKey(name: 'chek', defaultValue: 0)
          required int chek,
      @JsonKey(name: 'automatica_mr', defaultValue: '')
          required String automaticaMr}) {
    return _EstacionInactiva(
      estacion: estacion,
      fechaCrea: fechaCrea,
      restriccion: restriccion,
      usuarioCrea: usuarioCrea,
      tipo: tipo,
      habilitado: habilitado,
      chek: chek,
      automaticaMr: automaticaMr,
    );
  }

  EstacionInactiva fromJson(Map<String, Object?> json) {
    return EstacionInactiva.fromJson(json);
  }
}

/// @nodoc
const $EstacionInactiva = _$EstacionInactivaTearOff();

/// @nodoc
mixin _$EstacionInactiva {
  @JsonKey(name: 'estacion', defaultValue: '')
  String get estacion => throw _privateConstructorUsedError;
  @JsonKey(name: 'fecha_crea', defaultValue: '')
  String get fechaCrea => throw _privateConstructorUsedError;
  @JsonKey(name: 'restriccion', defaultValue: '')
  String get restriccion => throw _privateConstructorUsedError;
  @JsonKey(name: 'usuario_crea', defaultValue: '')
  String get usuarioCrea => throw _privateConstructorUsedError;
  @JsonKey(name: 'tipo', defaultValue: '')
  String get tipo => throw _privateConstructorUsedError;
  @JsonKey(name: 'habilitado', defaultValue: '')
  String get habilitado => throw _privateConstructorUsedError;
  @JsonKey(name: 'chek', defaultValue: 0)
  int get chek => throw _privateConstructorUsedError;
  @JsonKey(name: 'automatica_mr', defaultValue: '')
  String get automaticaMr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstacionInactivaCopyWith<EstacionInactiva> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstacionInactivaCopyWith<$Res> {
  factory $EstacionInactivaCopyWith(
          EstacionInactiva value, $Res Function(EstacionInactiva) then) =
      _$EstacionInactivaCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'estacion', defaultValue: '') String estacion,
      @JsonKey(name: 'fecha_crea', defaultValue: '') String fechaCrea,
      @JsonKey(name: 'restriccion', defaultValue: '') String restriccion,
      @JsonKey(name: 'usuario_crea', defaultValue: '') String usuarioCrea,
      @JsonKey(name: 'tipo', defaultValue: '') String tipo,
      @JsonKey(name: 'habilitado', defaultValue: '') String habilitado,
      @JsonKey(name: 'chek', defaultValue: 0) int chek,
      @JsonKey(name: 'automatica_mr', defaultValue: '') String automaticaMr});
}

/// @nodoc
class _$EstacionInactivaCopyWithImpl<$Res>
    implements $EstacionInactivaCopyWith<$Res> {
  _$EstacionInactivaCopyWithImpl(this._value, this._then);

  final EstacionInactiva _value;
  // ignore: unused_field
  final $Res Function(EstacionInactiva) _then;

  @override
  $Res call({
    Object? estacion = freezed,
    Object? fechaCrea = freezed,
    Object? restriccion = freezed,
    Object? usuarioCrea = freezed,
    Object? tipo = freezed,
    Object? habilitado = freezed,
    Object? chek = freezed,
    Object? automaticaMr = freezed,
  }) {
    return _then(_value.copyWith(
      estacion: estacion == freezed
          ? _value.estacion
          : estacion // ignore: cast_nullable_to_non_nullable
              as String,
      fechaCrea: fechaCrea == freezed
          ? _value.fechaCrea
          : fechaCrea // ignore: cast_nullable_to_non_nullable
              as String,
      restriccion: restriccion == freezed
          ? _value.restriccion
          : restriccion // ignore: cast_nullable_to_non_nullable
              as String,
      usuarioCrea: usuarioCrea == freezed
          ? _value.usuarioCrea
          : usuarioCrea // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: tipo == freezed
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      habilitado: habilitado == freezed
          ? _value.habilitado
          : habilitado // ignore: cast_nullable_to_non_nullable
              as String,
      chek: chek == freezed
          ? _value.chek
          : chek // ignore: cast_nullable_to_non_nullable
              as int,
      automaticaMr: automaticaMr == freezed
          ? _value.automaticaMr
          : automaticaMr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EstacionInactivaCopyWith<$Res>
    implements $EstacionInactivaCopyWith<$Res> {
  factory _$EstacionInactivaCopyWith(
          _EstacionInactiva value, $Res Function(_EstacionInactiva) then) =
      __$EstacionInactivaCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'estacion', defaultValue: '') String estacion,
      @JsonKey(name: 'fecha_crea', defaultValue: '') String fechaCrea,
      @JsonKey(name: 'restriccion', defaultValue: '') String restriccion,
      @JsonKey(name: 'usuario_crea', defaultValue: '') String usuarioCrea,
      @JsonKey(name: 'tipo', defaultValue: '') String tipo,
      @JsonKey(name: 'habilitado', defaultValue: '') String habilitado,
      @JsonKey(name: 'chek', defaultValue: 0) int chek,
      @JsonKey(name: 'automatica_mr', defaultValue: '') String automaticaMr});
}

/// @nodoc
class __$EstacionInactivaCopyWithImpl<$Res>
    extends _$EstacionInactivaCopyWithImpl<$Res>
    implements _$EstacionInactivaCopyWith<$Res> {
  __$EstacionInactivaCopyWithImpl(
      _EstacionInactiva _value, $Res Function(_EstacionInactiva) _then)
      : super(_value, (v) => _then(v as _EstacionInactiva));

  @override
  _EstacionInactiva get _value => super._value as _EstacionInactiva;

  @override
  $Res call({
    Object? estacion = freezed,
    Object? fechaCrea = freezed,
    Object? restriccion = freezed,
    Object? usuarioCrea = freezed,
    Object? tipo = freezed,
    Object? habilitado = freezed,
    Object? chek = freezed,
    Object? automaticaMr = freezed,
  }) {
    return _then(_EstacionInactiva(
      estacion: estacion == freezed
          ? _value.estacion
          : estacion // ignore: cast_nullable_to_non_nullable
              as String,
      fechaCrea: fechaCrea == freezed
          ? _value.fechaCrea
          : fechaCrea // ignore: cast_nullable_to_non_nullable
              as String,
      restriccion: restriccion == freezed
          ? _value.restriccion
          : restriccion // ignore: cast_nullable_to_non_nullable
              as String,
      usuarioCrea: usuarioCrea == freezed
          ? _value.usuarioCrea
          : usuarioCrea // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: tipo == freezed
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      habilitado: habilitado == freezed
          ? _value.habilitado
          : habilitado // ignore: cast_nullable_to_non_nullable
              as String,
      chek: chek == freezed
          ? _value.chek
          : chek // ignore: cast_nullable_to_non_nullable
              as int,
      automaticaMr: automaticaMr == freezed
          ? _value.automaticaMr
          : automaticaMr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EstacionInactiva implements _EstacionInactiva {
  _$_EstacionInactiva(
      {@JsonKey(name: 'estacion', defaultValue: '')
          required this.estacion,
      @JsonKey(name: 'fecha_crea', defaultValue: '')
          required this.fechaCrea,
      @JsonKey(name: 'restriccion', defaultValue: '')
          required this.restriccion,
      @JsonKey(name: 'usuario_crea', defaultValue: '')
          required this.usuarioCrea,
      @JsonKey(name: 'tipo', defaultValue: '')
          required this.tipo,
      @JsonKey(name: 'habilitado', defaultValue: '')
          required this.habilitado,
      @JsonKey(name: 'chek', defaultValue: 0)
          required this.chek,
      @JsonKey(name: 'automatica_mr', defaultValue: '')
          required this.automaticaMr});

  factory _$_EstacionInactiva.fromJson(Map<String, dynamic> json) =>
      _$$_EstacionInactivaFromJson(json);

  @override
  @JsonKey(name: 'estacion', defaultValue: '')
  final String estacion;
  @override
  @JsonKey(name: 'fecha_crea', defaultValue: '')
  final String fechaCrea;
  @override
  @JsonKey(name: 'restriccion', defaultValue: '')
  final String restriccion;
  @override
  @JsonKey(name: 'usuario_crea', defaultValue: '')
  final String usuarioCrea;
  @override
  @JsonKey(name: 'tipo', defaultValue: '')
  final String tipo;
  @override
  @JsonKey(name: 'habilitado', defaultValue: '')
  final String habilitado;
  @override
  @JsonKey(name: 'chek', defaultValue: 0)
  final int chek;
  @override
  @JsonKey(name: 'automatica_mr', defaultValue: '')
  final String automaticaMr;

  @override
  String toString() {
    return 'EstacionInactiva(estacion: $estacion, fechaCrea: $fechaCrea, restriccion: $restriccion, usuarioCrea: $usuarioCrea, tipo: $tipo, habilitado: $habilitado, chek: $chek, automaticaMr: $automaticaMr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EstacionInactiva &&
            const DeepCollectionEquality().equals(other.estacion, estacion) &&
            const DeepCollectionEquality().equals(other.fechaCrea, fechaCrea) &&
            const DeepCollectionEquality()
                .equals(other.restriccion, restriccion) &&
            const DeepCollectionEquality()
                .equals(other.usuarioCrea, usuarioCrea) &&
            const DeepCollectionEquality().equals(other.tipo, tipo) &&
            const DeepCollectionEquality()
                .equals(other.habilitado, habilitado) &&
            const DeepCollectionEquality().equals(other.chek, chek) &&
            const DeepCollectionEquality()
                .equals(other.automaticaMr, automaticaMr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(estacion),
      const DeepCollectionEquality().hash(fechaCrea),
      const DeepCollectionEquality().hash(restriccion),
      const DeepCollectionEquality().hash(usuarioCrea),
      const DeepCollectionEquality().hash(tipo),
      const DeepCollectionEquality().hash(habilitado),
      const DeepCollectionEquality().hash(chek),
      const DeepCollectionEquality().hash(automaticaMr));

  @JsonKey(ignore: true)
  @override
  _$EstacionInactivaCopyWith<_EstacionInactiva> get copyWith =>
      __$EstacionInactivaCopyWithImpl<_EstacionInactiva>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EstacionInactivaToJson(this);
  }
}

abstract class _EstacionInactiva implements EstacionInactiva {
  factory _EstacionInactiva(
      {@JsonKey(name: 'estacion', defaultValue: '')
          required String estacion,
      @JsonKey(name: 'fecha_crea', defaultValue: '')
          required String fechaCrea,
      @JsonKey(name: 'restriccion', defaultValue: '')
          required String restriccion,
      @JsonKey(name: 'usuario_crea', defaultValue: '')
          required String usuarioCrea,
      @JsonKey(name: 'tipo', defaultValue: '')
          required String tipo,
      @JsonKey(name: 'habilitado', defaultValue: '')
          required String habilitado,
      @JsonKey(name: 'chek', defaultValue: 0)
          required int chek,
      @JsonKey(name: 'automatica_mr', defaultValue: '')
          required String automaticaMr}) = _$_EstacionInactiva;

  factory _EstacionInactiva.fromJson(Map<String, dynamic> json) =
      _$_EstacionInactiva.fromJson;

  @override
  @JsonKey(name: 'estacion', defaultValue: '')
  String get estacion;
  @override
  @JsonKey(name: 'fecha_crea', defaultValue: '')
  String get fechaCrea;
  @override
  @JsonKey(name: 'restriccion', defaultValue: '')
  String get restriccion;
  @override
  @JsonKey(name: 'usuario_crea', defaultValue: '')
  String get usuarioCrea;
  @override
  @JsonKey(name: 'tipo', defaultValue: '')
  String get tipo;
  @override
  @JsonKey(name: 'habilitado', defaultValue: '')
  String get habilitado;
  @override
  @JsonKey(name: 'chek', defaultValue: 0)
  int get chek;
  @override
  @JsonKey(name: 'automatica_mr', defaultValue: '')
  String get automaticaMr;
  @override
  @JsonKey(ignore: true)
  _$EstacionInactivaCopyWith<_EstacionInactiva> get copyWith =>
      throw _privateConstructorUsedError;
}
