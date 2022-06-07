import 'package:freezed_annotation/freezed_annotation.dart';

import 'ramal_point.dart';

part 'via_cedida_line.freezed.dart';
part 'via_cedida_line.g.dart';

@freezed
class ViaCedidaLine with _$ViaCedidaLine {
  factory ViaCedidaLine(
      {@JsonKey(name: 'cod_via_cedida', defaultValue: 0)
          required int codViaCedida,
      @JsonKey(name: 'ramal_origen', defaultValue: '')
          required String ramalOrigen,
      @JsonKey(name: 'fec_ini', defaultValue: '')
          required String fecIni,
      @JsonKey(name: 'km_ini', defaultValue: 0)
          required int kmIni,
      @JsonKey(name: 'km_fin', defaultValue: 0)
          required int kmFin,
      @JsonKey(name: 'descripcion', defaultValue: '')
          required String descripcion,
      @JsonKey(name: 'usr_responsable', defaultValue: '')
          required String usrResponsable,
      @JsonKey(name: 'usr_creador', defaultValue: '')
          required String usrCreador,
      @JsonKey(name: 'estado_vc', defaultValue: '')
          required String estadoVc,
      @JsonKey(name: 'fec_fin_estimada', defaultValue: '')
          required String fecFinEstimada,
      @JsonKey(name: 'cruzeta', defaultValue: '')
          required String cruzeta,
      @JsonKey(name: 'numero_via_cedida', defaultValue: 0)
          required int numeroViaCedida,
      @Default([])
          List<RamalPoint> ramalPoints}) = _ViaCedidaLine;

  factory ViaCedidaLine.fromJson(Map<String, dynamic> json) =>
      _$ViaCedidaLineFromJson(json);
}
