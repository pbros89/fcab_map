import 'package:freezed_annotation/freezed_annotation.dart';
part 'acceso.freezed.dart';
part 'acceso.g.dart';

@freezed
class Acceso with _$Acceso {
  factory Acceso(
      {@JsonKey(name: 'id')
          required String id,
      @JsonKey(name: 'name', defaultValue: '')
          required String name,}) = _Acceso;

  factory Acceso.fromJson(Map<String, dynamic> json) =>
      _$AccesoFromJson(json);
}
