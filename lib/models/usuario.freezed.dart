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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Usuario _$UsuarioFromJson(Map<String, dynamic> json) {
  return _Usuario.fromJson(json);
}

/// @nodoc
mixin _$Usuario {
  @JsonKey(name: 'rut', defaultValue: 0)
  int get rut => throw _privateConstructorUsedError;
  @JsonKey(name: 'password', defaultValue: '')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'correo', defaultValue: '')
  String get correo => throw _privateConstructorUsedError;
  @JsonKey(name: 'cuenta', defaultValue: '')
  String get cuenta => throw _privateConstructorUsedError;
  @JsonKey(name: 'nombre', defaultValue: '')
  String get nombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'estado', defaultValue: 'I')
  String get estado => throw _privateConstructorUsedError;
  List<FiltroUsuario> get filtros => throw _privateConstructorUsedError;
  List<RolUsuario> get roles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsuarioCopyWith<Usuario> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsuarioCopyWith<$Res> {
  factory $UsuarioCopyWith(Usuario value, $Res Function(Usuario) then) =
      _$UsuarioCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'rut', defaultValue: 0) int rut,
      @JsonKey(name: 'password', defaultValue: '') String password,
      @JsonKey(name: 'correo', defaultValue: '') String correo,
      @JsonKey(name: 'cuenta', defaultValue: '') String cuenta,
      @JsonKey(name: 'nombre', defaultValue: '') String nombre,
      @JsonKey(name: 'estado', defaultValue: 'I') String estado,
      List<FiltroUsuario> filtros,
      List<RolUsuario> roles});
}

/// @nodoc
class _$UsuarioCopyWithImpl<$Res> implements $UsuarioCopyWith<$Res> {
  _$UsuarioCopyWithImpl(this._value, this._then);

  final Usuario _value;
  // ignore: unused_field
  final $Res Function(Usuario) _then;

  @override
  $Res call({
    Object? rut = freezed,
    Object? password = freezed,
    Object? correo = freezed,
    Object? cuenta = freezed,
    Object? nombre = freezed,
    Object? estado = freezed,
    Object? filtros = freezed,
    Object? roles = freezed,
  }) {
    return _then(_value.copyWith(
      rut: rut == freezed
          ? _value.rut
          : rut // ignore: cast_nullable_to_non_nullable
              as int,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      correo: correo == freezed
          ? _value.correo
          : correo // ignore: cast_nullable_to_non_nullable
              as String,
      cuenta: cuenta == freezed
          ? _value.cuenta
          : cuenta // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      estado: estado == freezed
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      filtros: filtros == freezed
          ? _value.filtros
          : filtros // ignore: cast_nullable_to_non_nullable
              as List<FiltroUsuario>,
      roles: roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RolUsuario>,
    ));
  }
}

/// @nodoc
abstract class _$$_UsuarioCopyWith<$Res> implements $UsuarioCopyWith<$Res> {
  factory _$$_UsuarioCopyWith(
          _$_Usuario value, $Res Function(_$_Usuario) then) =
      __$$_UsuarioCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'rut', defaultValue: 0) int rut,
      @JsonKey(name: 'password', defaultValue: '') String password,
      @JsonKey(name: 'correo', defaultValue: '') String correo,
      @JsonKey(name: 'cuenta', defaultValue: '') String cuenta,
      @JsonKey(name: 'nombre', defaultValue: '') String nombre,
      @JsonKey(name: 'estado', defaultValue: 'I') String estado,
      List<FiltroUsuario> filtros,
      List<RolUsuario> roles});
}

/// @nodoc
class __$$_UsuarioCopyWithImpl<$Res> extends _$UsuarioCopyWithImpl<$Res>
    implements _$$_UsuarioCopyWith<$Res> {
  __$$_UsuarioCopyWithImpl(_$_Usuario _value, $Res Function(_$_Usuario) _then)
      : super(_value, (v) => _then(v as _$_Usuario));

  @override
  _$_Usuario get _value => super._value as _$_Usuario;

  @override
  $Res call({
    Object? rut = freezed,
    Object? password = freezed,
    Object? correo = freezed,
    Object? cuenta = freezed,
    Object? nombre = freezed,
    Object? estado = freezed,
    Object? filtros = freezed,
    Object? roles = freezed,
  }) {
    return _then(_$_Usuario(
      rut: rut == freezed
          ? _value.rut
          : rut // ignore: cast_nullable_to_non_nullable
              as int,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      correo: correo == freezed
          ? _value.correo
          : correo // ignore: cast_nullable_to_non_nullable
              as String,
      cuenta: cuenta == freezed
          ? _value.cuenta
          : cuenta // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      estado: estado == freezed
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      filtros: filtros == freezed
          ? _value._filtros
          : filtros // ignore: cast_nullable_to_non_nullable
              as List<FiltroUsuario>,
      roles: roles == freezed
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RolUsuario>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Usuario implements _Usuario {
  _$_Usuario(
      {@JsonKey(name: 'rut', defaultValue: 0) required this.rut,
      @JsonKey(name: 'password', defaultValue: '') required this.password,
      @JsonKey(name: 'correo', defaultValue: '') required this.correo,
      @JsonKey(name: 'cuenta', defaultValue: '') required this.cuenta,
      @JsonKey(name: 'nombre', defaultValue: '') required this.nombre,
      @JsonKey(name: 'estado', defaultValue: 'I') required this.estado,
      final List<FiltroUsuario> filtros = const [],
      final List<RolUsuario> roles = const []})
      : _filtros = filtros,
        _roles = roles;

  factory _$_Usuario.fromJson(Map<String, dynamic> json) =>
      _$$_UsuarioFromJson(json);

  @override
  @JsonKey(name: 'rut', defaultValue: 0)
  final int rut;
  @override
  @JsonKey(name: 'password', defaultValue: '')
  final String password;
  @override
  @JsonKey(name: 'correo', defaultValue: '')
  final String correo;
  @override
  @JsonKey(name: 'cuenta', defaultValue: '')
  final String cuenta;
  @override
  @JsonKey(name: 'nombre', defaultValue: '')
  final String nombre;
  @override
  @JsonKey(name: 'estado', defaultValue: 'I')
  final String estado;
  final List<FiltroUsuario> _filtros;
  @override
  @JsonKey()
  List<FiltroUsuario> get filtros {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filtros);
  }

  final List<RolUsuario> _roles;
  @override
  @JsonKey()
  List<RolUsuario> get roles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  String toString() {
    return 'Usuario(rut: $rut, password: $password, correo: $correo, cuenta: $cuenta, nombre: $nombre, estado: $estado, filtros: $filtros, roles: $roles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Usuario &&
            const DeepCollectionEquality().equals(other.rut, rut) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.correo, correo) &&
            const DeepCollectionEquality().equals(other.cuenta, cuenta) &&
            const DeepCollectionEquality().equals(other.nombre, nombre) &&
            const DeepCollectionEquality().equals(other.estado, estado) &&
            const DeepCollectionEquality().equals(other._filtros, _filtros) &&
            const DeepCollectionEquality().equals(other._roles, _roles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rut),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(correo),
      const DeepCollectionEquality().hash(cuenta),
      const DeepCollectionEquality().hash(nombre),
      const DeepCollectionEquality().hash(estado),
      const DeepCollectionEquality().hash(_filtros),
      const DeepCollectionEquality().hash(_roles));

  @JsonKey(ignore: true)
  @override
  _$$_UsuarioCopyWith<_$_Usuario> get copyWith =>
      __$$_UsuarioCopyWithImpl<_$_Usuario>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsuarioToJson(this);
  }
}

abstract class _Usuario implements Usuario {
  factory _Usuario(
      {@JsonKey(name: 'rut', defaultValue: 0)
          required final int rut,
      @JsonKey(name: 'password', defaultValue: '')
          required final String password,
      @JsonKey(name: 'correo', defaultValue: '')
          required final String correo,
      @JsonKey(name: 'cuenta', defaultValue: '')
          required final String cuenta,
      @JsonKey(name: 'nombre', defaultValue: '')
          required final String nombre,
      @JsonKey(name: 'estado', defaultValue: 'I')
          required final String estado,
      final List<FiltroUsuario> filtros,
      final List<RolUsuario> roles}) = _$_Usuario;

  factory _Usuario.fromJson(Map<String, dynamic> json) = _$_Usuario.fromJson;

  @override
  @JsonKey(name: 'rut', defaultValue: 0)
  int get rut => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'password', defaultValue: '')
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'correo', defaultValue: '')
  String get correo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'cuenta', defaultValue: '')
  String get cuenta => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'nombre', defaultValue: '')
  String get nombre => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'estado', defaultValue: 'I')
  String get estado => throw _privateConstructorUsedError;
  @override
  List<FiltroUsuario> get filtros => throw _privateConstructorUsedError;
  @override
  List<RolUsuario> get roles => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UsuarioCopyWith<_$_Usuario> get copyWith =>
      throw _privateConstructorUsedError;
}
