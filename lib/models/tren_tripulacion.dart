import 'package:freezed_annotation/freezed_annotation.dart';

part 'tren_tripulacion.freezed.dart';
part 'tren_tripulacion.g.dart';

@freezed
class TrenTripulacion with _$TrenTripulacion {
  factory TrenTripulacion(
    {
      @JsonKey(name: 'nro_tren', defaultValue: 0) required int nroTren,
      @JsonKey(name: 'nro_tripulacion', defaultValue: 0) required int nroTripulacion,
      @JsonKey(name: 'nom_oper', defaultValue: '') required String nomOper,
      @JsonKey(name: 'hora_toma', defaultValue: '') required String horaToma,
      @JsonKey(name: 'codrut', defaultValue: '') required String codrut,
      @JsonKey(name: 'tipo_operador', defaultValue: '') required String tipoOperador,
    }) = _TrenTripulacion;

  factory TrenTripulacion.fromJson(Map<String, dynamic> json) =>
      _$TrenTripulacionFromJson(json);
}
