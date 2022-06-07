// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'usuario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Usuario _$UsuarioFromJson(Map<String, dynamic> json) {
  return _Usuario.fromJson(json);
}

/// @nodoc
class _$UsuarioTearOff {
  const _$UsuarioTearOff();

  _Usuario call(
      {@JsonKey(name: 'id', defaultValue: 0) required int id,
      @JsonKey(name: 'email', defaultValue: '') required String email,
      @JsonKey(name: 'usuario', defaultValue: '') required String usuario,
      @JsonKey(name: 'ultimo_login') DateTime? ultimoLogin,
      @JsonKey(name: 'estado', defaultValue: 'INACTIVO') required String estado,
      List<UsuarioAcceso> accesos = const []}) {
    return _Usuario(
      id: id,
      email: email,
      usuario: usuario,
      ultimoLogin: ultimoLogin,
      estado: estado,
      accesos: accesos,
    );
  }

  Usuario fromJson(Map<String, Object?> json) {
    return Usuario.fromJson(json);
  }
}

/// @nodoc
const $Usuario = _$UsuarioTearOff();

/// @nodoc
mixin _$Usuario {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'email', defaultValue: '')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'usuario', defaultValue: '')
  String get usuario => throw _privateConstructorUsedError;
  @JsonKey(name: 'ultimo_login')
  DateTime? get ultimoLogin => throw _privateConstructorUsedError;
  @JsonKey(name: 'estado', defaultValue: 'INACTIVO')
  String get estado => throw _privateConstructorUsedError;
  List<UsuarioAcceso> get accesos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsuarioCopyWith<Usuario> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsuarioCopyWith<$Res> {
  factory $UsuarioCopyWith(Usuario value, $Res Function(Usuario) then) =
      _$UsuarioCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'usuario', defaultValue: '') String usuario,
      @JsonKey(name: 'ultimo_login') DateTime? ultimoLogin,
      @JsonKey(name: 'estado', defaultValue: 'INACTIVO') String estado,
      List<UsuarioAcceso> accesos});
}

/// @nodoc
class _$UsuarioCopyWithImpl<$Res> implements $UsuarioCopyWith<$Res> {
  _$UsuarioCopyWithImpl(this._value, this._then);

  final Usuario _value;
  // ignore: unused_field
  final $Res Function(Usuario) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? usuario = freezed,
    Object? ultimoLogin = freezed,
    Object? estado = freezed,
    Object? accesos = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      usuario: usuario == freezed
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      ultimoLogin: ultimoLogin == freezed
          ? _value.ultimoLogin
          : ultimoLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estado: estado == freezed
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      accesos: accesos == freezed
          ? _value.accesos
          : accesos // ignore: cast_nullable_to_non_nullable
              as List<UsuarioAcceso>,
    ));
  }
}

/// @nodoc
abstract class _$UsuarioCopyWith<$Res> implements $UsuarioCopyWith<$Res> {
  factory _$UsuarioCopyWith(_Usuario value, $Res Function(_Usuario) then) =
      __$UsuarioCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'usuario', defaultValue: '') String usuario,
      @JsonKey(name: 'ultimo_login') DateTime? ultimoLogin,
      @JsonKey(name: 'estado', defaultValue: 'INACTIVO') String estado,
      List<UsuarioAcceso> accesos});
}

/// @nodoc
class __$UsuarioCopyWithImpl<$Res> extends _$UsuarioCopyWithImpl<$Res>
    implements _$UsuarioCopyWith<$Res> {
  __$UsuarioCopyWithImpl(_Usuario _value, $Res Function(_Usuario) _then)
      : super(_value, (v) => _then(v as _Usuario));

  @override
  _Usuario get _value => super._value as _Usuario;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? usuario = freezed,
    Object? ultimoLogin = freezed,
    Object? estado = freezed,
    Object? accesos = freezed,
  }) {
    return _then(_Usuario(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      usuario: usuario == freezed
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      ultimoLogin: ultimoLogin == freezed
          ? _value.ultimoLogin
          : ultimoLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estado: estado == freezed
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      accesos: accesos == freezed
          ? _value.accesos
          : accesos // ignore: cast_nullable_to_non_nullable
              as List<UsuarioAcceso>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Usuario implements _Usuario {
  _$_Usuario(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'email', defaultValue: '') required this.email,
      @JsonKey(name: 'usuario', defaultValue: '') required this.usuario,
      @JsonKey(name: 'ultimo_login') this.ultimoLogin,
      @JsonKey(name: 'estado', defaultValue: 'INACTIVO') required this.estado,
      this.accesos = const []});

  factory _$_Usuario.fromJson(Map<String, dynamic> json) =>
      _$$_UsuarioFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  final String email;
  @override
  @JsonKey(name: 'usuario', defaultValue: '')
  final String usuario;
  @override
  @JsonKey(name: 'ultimo_login')
  final DateTime? ultimoLogin;
  @override
  @JsonKey(name: 'estado', defaultValue: 'INACTIVO')
  final String estado;
  @JsonKey()
  @override
  final List<UsuarioAcceso> accesos;

  @override
  String toString() {
    return 'Usuario(id: $id, email: $email, usuario: $usuario, ultimoLogin: $ultimoLogin, estado: $estado, accesos: $accesos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Usuario &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.usuario, usuario) &&
            const DeepCollectionEquality()
                .equals(other.ultimoLogin, ultimoLogin) &&
            const DeepCollectionEquality().equals(other.estado, estado) &&
            const DeepCollectionEquality().equals(other.accesos, accesos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(usuario),
      const DeepCollectionEquality().hash(ultimoLogin),
      const DeepCollectionEquality().hash(estado),
      const DeepCollectionEquality().hash(accesos));

  @JsonKey(ignore: true)
  @override
  _$UsuarioCopyWith<_Usuario> get copyWith =>
      __$UsuarioCopyWithImpl<_Usuario>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsuarioToJson(this);
  }
}

abstract class _Usuario implements Usuario {
  factory _Usuario(
      {@JsonKey(name: 'id', defaultValue: 0) required int id,
      @JsonKey(name: 'email', defaultValue: '') required String email,
      @JsonKey(name: 'usuario', defaultValue: '') required String usuario,
      @JsonKey(name: 'ultimo_login') DateTime? ultimoLogin,
      @JsonKey(name: 'estado', defaultValue: 'INACTIVO') required String estado,
      List<UsuarioAcceso> accesos}) = _$_Usuario;

  factory _Usuario.fromJson(Map<String, dynamic> json) = _$_Usuario.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  String get email;
  @override
  @JsonKey(name: 'usuario', defaultValue: '')
  String get usuario;
  @override
  @JsonKey(name: 'ultimo_login')
  DateTime? get ultimoLogin;
  @override
  @JsonKey(name: 'estado', defaultValue: 'INACTIVO')
  String get estado;
  @override
  List<UsuarioAcceso> get accesos;
  @override
  @JsonKey(ignore: true)
  _$UsuarioCopyWith<_Usuario> get copyWith =>
      throw _privateConstructorUsedError;
}
