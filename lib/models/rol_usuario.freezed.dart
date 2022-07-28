// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rol_usuario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RolUsuario _$RolUsuarioFromJson(Map<String, dynamic> json) {
  return _RolUsuario.fromJson(json);
}

/// @nodoc
mixin _$RolUsuario {
  @JsonKey(name: 'id_rol', defaultValue: '')
  String get idRol => throw _privateConstructorUsedError;
  @JsonKey(name: 'nombre', defaultValue: '')
  String get nombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'estado', defaultValue: 'A')
  String? get estado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RolUsuarioCopyWith<RolUsuario> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RolUsuarioCopyWith<$Res> {
  factory $RolUsuarioCopyWith(
          RolUsuario value, $Res Function(RolUsuario) then) =
      _$RolUsuarioCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id_rol', defaultValue: '') String idRol,
      @JsonKey(name: 'nombre', defaultValue: '') String nombre,
      @JsonKey(name: 'estado', defaultValue: 'A') String? estado});
}

/// @nodoc
class _$RolUsuarioCopyWithImpl<$Res> implements $RolUsuarioCopyWith<$Res> {
  _$RolUsuarioCopyWithImpl(this._value, this._then);

  final RolUsuario _value;
  // ignore: unused_field
  final $Res Function(RolUsuario) _then;

  @override
  $Res call({
    Object? idRol = freezed,
    Object? nombre = freezed,
    Object? estado = freezed,
  }) {
    return _then(_value.copyWith(
      idRol: idRol == freezed
          ? _value.idRol
          : idRol // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_RolUsuarioCopyWith<$Res>
    implements $RolUsuarioCopyWith<$Res> {
  factory _$$_RolUsuarioCopyWith(
          _$_RolUsuario value, $Res Function(_$_RolUsuario) then) =
      __$$_RolUsuarioCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id_rol', defaultValue: '') String idRol,
      @JsonKey(name: 'nombre', defaultValue: '') String nombre,
      @JsonKey(name: 'estado', defaultValue: 'A') String? estado});
}

/// @nodoc
class __$$_RolUsuarioCopyWithImpl<$Res> extends _$RolUsuarioCopyWithImpl<$Res>
    implements _$$_RolUsuarioCopyWith<$Res> {
  __$$_RolUsuarioCopyWithImpl(
      _$_RolUsuario _value, $Res Function(_$_RolUsuario) _then)
      : super(_value, (v) => _then(v as _$_RolUsuario));

  @override
  _$_RolUsuario get _value => super._value as _$_RolUsuario;

  @override
  $Res call({
    Object? idRol = freezed,
    Object? nombre = freezed,
    Object? estado = freezed,
  }) {
    return _then(_$_RolUsuario(
      idRol: idRol == freezed
          ? _value.idRol
          : idRol // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_RolUsuario implements _RolUsuario {
  _$_RolUsuario(
      {@JsonKey(name: 'id_rol', defaultValue: '') required this.idRol,
      @JsonKey(name: 'nombre', defaultValue: '') required this.nombre,
      @JsonKey(name: 'estado', defaultValue: 'A') required this.estado});

  factory _$_RolUsuario.fromJson(Map<String, dynamic> json) =>
      _$$_RolUsuarioFromJson(json);

  @override
  @JsonKey(name: 'id_rol', defaultValue: '')
  final String idRol;
  @override
  @JsonKey(name: 'nombre', defaultValue: '')
  final String nombre;
  @override
  @JsonKey(name: 'estado', defaultValue: 'A')
  final String? estado;

  @override
  String toString() {
    return 'RolUsuario(idRol: $idRol, nombre: $nombre, estado: $estado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RolUsuario &&
            const DeepCollectionEquality().equals(other.idRol, idRol) &&
            const DeepCollectionEquality().equals(other.nombre, nombre) &&
            const DeepCollectionEquality().equals(other.estado, estado));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idRol),
      const DeepCollectionEquality().hash(nombre),
      const DeepCollectionEquality().hash(estado));

  @JsonKey(ignore: true)
  @override
  _$$_RolUsuarioCopyWith<_$_RolUsuario> get copyWith =>
      __$$_RolUsuarioCopyWithImpl<_$_RolUsuario>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RolUsuarioToJson(this);
  }
}

abstract class _RolUsuario implements RolUsuario {
  factory _RolUsuario(
      {@JsonKey(name: 'id_rol', defaultValue: '')
          required final String idRol,
      @JsonKey(name: 'nombre', defaultValue: '')
          required final String nombre,
      @JsonKey(name: 'estado', defaultValue: 'A')
          required final String? estado}) = _$_RolUsuario;

  factory _RolUsuario.fromJson(Map<String, dynamic> json) =
      _$_RolUsuario.fromJson;

  @override
  @JsonKey(name: 'id_rol', defaultValue: '')
  String get idRol => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'nombre', defaultValue: '')
  String get nombre => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'estado', defaultValue: 'A')
  String? get estado => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RolUsuarioCopyWith<_$_RolUsuario> get copyWith =>
      throw _privateConstructorUsedError;
}
