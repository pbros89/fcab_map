// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'acceso.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Acceso _$AccesoFromJson(Map<String, dynamic> json) {
  return _Acceso.fromJson(json);
}

/// @nodoc
class _$AccesoTearOff {
  const _$AccesoTearOff();

  _Acceso call(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'name', defaultValue: '') required String name}) {
    return _Acceso(
      id: id,
      name: name,
    );
  }

  Acceso fromJson(Map<String, Object?> json) {
    return Acceso.fromJson(json);
  }
}

/// @nodoc
const $Acceso = _$AccesoTearOff();

/// @nodoc
mixin _$Acceso {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccesoCopyWith<Acceso> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccesoCopyWith<$Res> {
  factory $AccesoCopyWith(Acceso value, $Res Function(Acceso) then) =
      _$AccesoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class _$AccesoCopyWithImpl<$Res> implements $AccesoCopyWith<$Res> {
  _$AccesoCopyWithImpl(this._value, this._then);

  final Acceso _value;
  // ignore: unused_field
  final $Res Function(Acceso) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AccesoCopyWith<$Res> implements $AccesoCopyWith<$Res> {
  factory _$AccesoCopyWith(_Acceso value, $Res Function(_Acceso) then) =
      __$AccesoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class __$AccesoCopyWithImpl<$Res> extends _$AccesoCopyWithImpl<$Res>
    implements _$AccesoCopyWith<$Res> {
  __$AccesoCopyWithImpl(_Acceso _value, $Res Function(_Acceso) _then)
      : super(_value, (v) => _then(v as _Acceso));

  @override
  _Acceso get _value => super._value as _Acceso;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Acceso(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Acceso implements _Acceso {
  _$_Acceso(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name});

  factory _$_Acceso.fromJson(Map<String, dynamic> json) =>
      _$$_AccesoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'Acceso(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Acceso &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$AccesoCopyWith<_Acceso> get copyWith =>
      __$AccesoCopyWithImpl<_Acceso>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccesoToJson(this);
  }
}

abstract class _Acceso implements Acceso {
  factory _Acceso(
          {@JsonKey(name: 'id') required String id,
          @JsonKey(name: 'name', defaultValue: '') required String name}) =
      _$_Acceso;

  factory _Acceso.fromJson(Map<String, dynamic> json) = _$_Acceso.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$AccesoCopyWith<_Acceso> get copyWith => throw _privateConstructorUsedError;
}
