import 'package:fcab_map/models/ramal_point.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'precaucion_line.freezed.dart';
part 'precaucion_line.g.dart';

@freezed
class PrecaucionLine with _$PrecaucionLine {
  factory PrecaucionLine({
      @JsonKey(name: 'tipo', defaultValue: '')
          required String tipo,
      @JsonKey(name: 'cod_ramal', defaultValue: '')
          required String codRamal,
      @JsonKey(name: 'km_desde', defaultValue: 0.0)
          required double kmDesde,
      @JsonKey(name: 'km_hasta', defaultValue: 0.0)
          required double kmHasta,
      @JsonKey(name: 'numero', defaultValue: 0)
          required int numero,
      @JsonKey(name: 'velocidad', defaultValue: 0)
          required int velocidad,
      @JsonKey(name: 'causa', defaultValue: '')
          required String causa,
      @JsonKey(name: 'observacion', defaultValue: '')
          required String observacion,
      @JsonKey(name: 'activa', defaultValue: '')
          required String activa,
      @JsonKey(name: 'factiva', defaultValue: '')
          required String factiva,
      @JsonKey(name: 'sentido', defaultValue: '')
          required String sentido,
      @Default([])
          List<RamalPoint> listPoints}) = _PrecaucionLine;

  factory PrecaucionLine.fromJson(Map<String, dynamic> json) =>
      _$PrecaucionLineFromJson(json);
}
