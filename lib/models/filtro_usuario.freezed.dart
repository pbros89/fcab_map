// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filtro_usuario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FiltroUsuario _$FiltroUsuarioFromJson(Map<String, dynamic> json) {
  return _FiltroUsuario.fromJson(json);
}

/// @nodoc
mixin _$FiltroUsuario {
  @JsonKey(name: 'id_filtro', defaultValue: 0)
  int get idFiltro => throw _privateConstructorUsedError;
  @JsonKey(name: 'nombre', defaultValue: '')
  String get nombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'estado', defaultValue: 'A')
  String? get estado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FiltroUsuarioCopyWith<FiltroUsuario> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltroUsuarioCopyWith<$Res> {
  factory $FiltroUsuarioCopyWith(
          FiltroUsuario value, $Res Function(FiltroUsuario) then) =
      _$FiltroUsuarioCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id_filtro', defaultValue: 0) int idFiltro,
      @JsonKey(name: 'nombre', defaultValue: '') String nombre,
      @JsonKey(name: 'estado', defaultValue: 'A') String? estado});
}

/// @nodoc
class _$FiltroUsuarioCopyWithImpl<$Res>
    implements $FiltroUsuarioCopyWith<$Res> {
  _$FiltroUsuarioCopyWithImpl(this._value, this._then);

  final FiltroUsuario _value;
  // ignore: unused_field
  final $Res Function(FiltroUsuario) _then;

  @override
  $Res call({
    Object? idFiltro = freezed,
    Object? nombre = freezed,
    Object? estado = freezed,
  }) {
    return _then(_value.copyWith(
      idFiltro: idFiltro == freezed
          ? _value.idFiltro
          : idFiltro // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      estado: estado == freezed
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FiltroUsuarioCopyWith<$Res>
    implements $FiltroUsuarioCopyWith<$Res> {
  factory _$$_FiltroUsuarioCopyWith(
          _$_FiltroUsuario value, $Res Function(_$_FiltroUsuario) then) =
      __$$_FiltroUsuarioCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id_filtro', defaultValue: 0) int idFiltro,
      @JsonKey(name: 'nombre', defaultValue: '') String nombre,
      @JsonKey(name: 'estado', defaultValue: 'A') String? estado});
}

/// @nodoc
class __$$_FiltroUsuarioCopyWithImpl<$Res>
    extends _$FiltroUsuarioCopyWithImpl<$Res>
    implements _$$_FiltroUsuarioCopyWith<$Res> {
  __$$_FiltroUsuarioCopyWithImpl(
      _$_FiltroUsuario _value, $Res Function(_$_FiltroUsuario) _then)
      : super(_value, (v) => _then(v as _$_FiltroUsuario));

  @override
  _$_FiltroUsuario get _value => super._value as _$_FiltroUsuario;

  @override
  $Res call({
    Object? idFiltro = freezed,
    Object? nombre = freezed,
    Object? estado = freezed,
  }) {
    return _then(_$_FiltroUsuario(
      idFiltro: idFiltro == freezed
          ? _value.idFiltro
          : idFiltro // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      estado: estado == freezed
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FiltroUsuario implements _FiltroUsuario {
  _$_FiltroUsuario(
      {@JsonKey(name: 'id_filtro', defaultValue: 0) required this.idFiltro,
      @JsonKey(name: 'nombre', defaultValue: '') required this.nombre,
      @JsonKey(name: 'estado', defaultValue: 'A') required this.estado});

  factory _$_FiltroUsuario.fromJson(Map<String, dynamic> json) =>
      _$$_FiltroUsuarioFromJson(json);

  @override
  @JsonKey(name: 'id_filtro', defaultValue: 0)
  final int idFiltro;
  @override
  @JsonKey(name: 'nombre', defaultValue: '')
  final String nombre;
  @override
  @JsonKey(name: 'estado', defaultValue: 'A')
  final String? estado;

  @override
  String toString() {
    return 'FiltroUsuario(idFiltro: $idFiltro, nombre: $nombre, estado: $estado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FiltroUsuario &&
            const DeepCollectionEquality().equals(other.idFiltro, idFiltro) &&
            const DeepCollectionEquality().equals(other.nombre, nombre) &&
            const DeepCollectionEquality().equals(other.estado, estado));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idFiltro),
      const DeepCollectionEquality().hash(nombre),
      const DeepCollectionEquality().hash(estado));

  @JsonKey(ignore: true)
  @override
  _$$_FiltroUsuarioCopyWith<_$_FiltroUsuario> get copyWith =>
      __$$_FiltroUsuarioCopyWithImpl<_$_FiltroUsuario>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FiltroUsuarioToJson(this);
  }
}

abstract class _FiltroUsuario implements FiltroUsuario {
  factory _FiltroUsuario(
      {@JsonKey(name: 'id_filtro', defaultValue: 0)
          required final int idFiltro,
      @JsonKey(name: 'nombre', defaultValue: '')
          required final String nombre,
      @JsonKey(name: 'estado', defaultValue: 'A')
          required final String? estado}) = _$_FiltroUsuario;

  factory _FiltroUsuario.fromJson(Map<String, dynamic> json) =
      _$_FiltroUsuario.fromJson;

  @override
  @JsonKey(name: 'id_filtro', defaultValue: 0)
  int get idFiltro => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'nombre', defaultValue: '')
  String get nombre => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'estado', defaultValue: 'A')
  String? get estado => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FiltroUsuarioCopyWith<_$_FiltroUsuario> get copyWith =>
      throw _privateConstructorUsedError;
}
