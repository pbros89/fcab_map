import 'package:freezed_annotation/freezed_annotation.dart';

part 'tren_mr.freezed.dart';
part 'tren_mr.g.dart';

@freezed
class TrenMr with _$TrenMr {
  factory TrenMr({

      @JsonKey(name: 'nrotrenmr', defaultValue: 0) required int nrotrenmr,
      @JsonKey(name: 'tipomr', defaultValue: '') required String tipomr,
      @JsonKey(name: 'numero', defaultValue: '') required String numero,
      @JsonKey(name: 'nummr', defaultValue: '') required String nummr,
      @JsonKey(name: 'modelomr', defaultValue: '') required String modelomr,
      @JsonKey(name: 'tonnetasmr', defaultValue: 0.0) required double tonnetasmr,
      @JsonKey(name: 'tonbrutasmr', defaultValue: 0.0) required double tonbrutasmr,
      @JsonKey(name: 'estadomr', defaultValue: '') required String estadomr,
      @JsonKey(name: 'marcamr', defaultValue: 0) required int marcamr,
      @JsonKey(name: 'activarmr', defaultValue: '') required String activarmr,
      @JsonKey(name: 'postrenmr', defaultValue: 0) required int postrenmr,
      @JsonKey(name: 'largomr', defaultValue: 0.0) required double largomr,
      @JsonKey(name: 'cargado', defaultValue: 0) required int cargado,
      @JsonKey(name: 'vacio', defaultValue: 0) required int vacio,
      @JsonKey(name: 'locoEmpuje', defaultValue: '') required String locoEmpuje,
      @JsonKey(name: 'descmarca', defaultValue: '') required String descmarca,
      @JsonKey(name: 'ssgmr', defaultValue: '') required String ssgmr,
      @JsonKey(name: 'ssxamr', defaultValue: '') required String ssxamr,
      @JsonKey(name: 'solicitudmr', defaultValue: 0) required int solicitudmr,
      @JsonKey(name: 'nroGuia', defaultValue: '') required String nroGuia,
      @JsonKey(name: 'codProducto', defaultValue: '') required String codProducto,
      @JsonKey(name: 'sectorOrigen', defaultValue: '') required String sectorOrigen,
      @JsonKey(name: 'sectorDestino', defaultValue: '') required String sectorDestino}) = _TrenMr;

  factory TrenMr.fromJson(Map<String, dynamic> json) =>
      _$TrenMrFromJson(json);
}
