// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'usuario_acceso.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsuarioAcceso _$UsuarioAccesoFromJson(Map<String, dynamic> json) {
  return _UsuarioAcceso.fromJson(json);
}

/// @nodoc
class _$UsuarioAccesoTearOff {
  const _$UsuarioAccesoTearOff();

  _UsuarioAcceso call(
      {@JsonKey(name: 'id_usuario', defaultValue: 0) required int id_usuario,
      @JsonKey(name: 'id_acceso', defaultValue: '') required String id_acceso,
      @JsonKey(name: 'estado', defaultValue: 'ACTIVO') required String? estado,
      List<Acceso> accesos = const []}) {
    return _UsuarioAcceso(
      id_usuario: id_usuario,
      id_acceso: id_acceso,
      estado: estado,
      accesos: accesos,
    );
  }

  UsuarioAcceso fromJson(Map<String, Object?> json) {
    return UsuarioAcceso.fromJson(json);
  }
}

/// @nodoc
const $UsuarioAcceso = _$UsuarioAccesoTearOff();

/// @nodoc
mixin _$UsuarioAcceso {
  @JsonKey(name: 'id_usuario', defaultValue: 0)
  int get id_usuario => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_acceso', defaultValue: '')
  String get id_acceso => throw _privateConstructorUsedError;
  @JsonKey(name: 'estado', defaultValue: 'ACTIVO')
  String? get estado => throw _privateConstructorUsedError;
  List<Acceso> get accesos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsuarioAccesoCopyWith<UsuarioAcceso> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsuarioAccesoCopyWith<$Res> {
  factory $UsuarioAccesoCopyWith(
          UsuarioAcceso value, $Res Function(UsuarioAcceso) then) =
      _$UsuarioAccesoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id_usuario', defaultValue: 0) int id_usuario,
      @JsonKey(name: 'id_acceso', defaultValue: '') String id_acceso,
      @JsonKey(name: 'estado', defaultValue: 'ACTIVO') String? estado,
      List<Acceso> accesos});
}

/// @nodoc
class _$UsuarioAccesoCopyWithImpl<$Res>
    implements $UsuarioAccesoCopyWith<$Res> {
  _$UsuarioAccesoCopyWithImpl(this._value, this._then);

  final UsuarioAcceso _value;
  // ignore: unused_field
  final $Res Function(UsuarioAcceso) _then;

  @override
  $Res call({
    Object? id_usuario = freezed,
    Object? id_acceso = freezed,
    Object? estado = freezed,
    Object? accesos = freezed,
  }) {
    return _then(_value.copyWith(
      id_usuario: id_usuario == freezed
          ? _value.id_usuario
          : id_usuario // ignore: cast_nullable_to_non_nullable
              as int,
      id_acceso: id_acceso == freezed
          ? _value.id_acceso
          : id_acceso // ignore: cast_nullable_to_non_nullable
              as String,
      estado: estado == freezed
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String?,
      accesos: accesos == freezed
          ? _value.accesos
          : accesos // ignore: cast_nullable_to_non_nullable
              as List<Acceso>,
    ));
  }
}

/// @nodoc
abstract class _$UsuarioAccesoCopyWith<$Res>
    implements $UsuarioAccesoCopyWith<$Res> {
  factory _$UsuarioAccesoCopyWith(
          _UsuarioAcceso value, $Res Function(_UsuarioAcceso) then) =
      __$UsuarioAccesoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id_usuario', defaultValue: 0) int id_usuario,
      @JsonKey(name: 'id_acceso', defaultValue: '') String id_acceso,
      @JsonKey(name: 'estado', defaultValue: 'ACTIVO') String? estado,
      List<Acceso> accesos});
}

/// @nodoc
class __$UsuarioAccesoCopyWithImpl<$Res>
    extends _$UsuarioAccesoCopyWithImpl<$Res>
    implements _$UsuarioAccesoCopyWith<$Res> {
  __$UsuarioAccesoCopyWithImpl(
      _UsuarioAcceso _value, $Res Function(_UsuarioAcceso) _then)
      : super(_value, (v) => _then(v as _UsuarioAcceso));

  @override
  _UsuarioAcceso get _value => super._value as _UsuarioAcceso;

  @override
  $Res call({
    Object? id_usuario = freezed,
    Object? id_acceso = freezed,
    Object? estado = freezed,
    Object? accesos = freezed,
  }) {
    return _then(_UsuarioAcceso(
      id_usuario: id_usuario == freezed
          ? _value.id_usuario
          : id_usuario // ignore: cast_nullable_to_non_nullable
              as int,
      id_acceso: id_acceso == freezed
          ? _value.id_acceso
          : id_acceso // ignore: cast_nullable_to_non_nullable
              as String,
      estado: estado == freezed
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String?,
      accesos: accesos == freezed
          ? _value.accesos
          : accesos // ignore: cast_nullable_to_non_nullable
              as List<Acceso>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsuarioAcceso implements _UsuarioAcceso {
  _$_UsuarioAcceso(
      {@JsonKey(name: 'id_usuario', defaultValue: 0) required this.id_usuario,
      @JsonKey(name: 'id_acceso', defaultValue: '') required this.id_acceso,
      @JsonKey(name: 'estado', defaultValue: 'ACTIVO') required this.estado,
      this.accesos = const []});

  factory _$_UsuarioAcceso.fromJson(Map<String, dynamic> json) =>
      _$$_UsuarioAccesoFromJson(json);

  @override
  @JsonKey(name: 'id_usuario', defaultValue: 0)
  final int id_usuario;
  @override
  @JsonKey(name: 'id_acceso', defaultValue: '')
  final String id_acceso;
  @override
  @JsonKey(name: 'estado', defaultValue: 'ACTIVO')
  final String? estado;
  @JsonKey()
  @override
  final List<Acceso> accesos;

  @override
  String toString() {
    return 'UsuarioAcceso(id_usuario: $id_usuario, id_acceso: $id_acceso, estado: $estado, accesos: $accesos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsuarioAcceso &&
            const DeepCollectionEquality()
                .equals(other.id_usuario, id_usuario) &&
            const DeepCollectionEquality().equals(other.id_acceso, id_acceso) &&
            const DeepCollectionEquality().equals(other.estado, estado) &&
            const DeepCollectionEquality().equals(other.accesos, accesos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id_usuario),
      const DeepCollectionEquality().hash(id_acceso),
      const DeepCollectionEquality().hash(estado),
      const DeepCollectionEquality().hash(accesos));

  @JsonKey(ignore: true)
  @override
  _$UsuarioAccesoCopyWith<_UsuarioAcceso> get copyWith =>
      __$UsuarioAccesoCopyWithImpl<_UsuarioAcceso>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsuarioAccesoToJson(this);
  }
}

abstract class _UsuarioAcceso implements UsuarioAcceso {
  factory _UsuarioAcceso(
      {@JsonKey(name: 'id_usuario', defaultValue: 0) required int id_usuario,
      @JsonKey(name: 'id_acceso', defaultValue: '') required String id_acceso,
      @JsonKey(name: 'estado', defaultValue: 'ACTIVO') required String? estado,
      List<Acceso> accesos}) = _$_UsuarioAcceso;

  factory _UsuarioAcceso.fromJson(Map<String, dynamic> json) =
      _$_UsuarioAcceso.fromJson;

  @override
  @JsonKey(name: 'id_usuario', defaultValue: 0)
  int get id_usuario;
  @override
  @JsonKey(name: 'id_acceso', defaultValue: '')
  String get id_acceso;
  @override
  @JsonKey(name: 'estado', defaultValue: 'ACTIVO')
  String? get estado;
  @override
  List<Acceso> get accesos;
  @override
  @JsonKey(ignore: true)
  _$UsuarioAccesoCopyWith<_UsuarioAcceso> get copyWith =>
      throw _privateConstructorUsedError;
}
