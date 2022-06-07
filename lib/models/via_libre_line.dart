import 'package:fcab_map/models/ramal_point.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'via_libre_line.freezed.dart';
part 'via_libre_line.g.dart';

@freezed
class ViaLibreLine with _$ViaLibreLine {
  factory ViaLibreLine(
      {@JsonKey(name: 'nro_vl', defaultValue: 0)
          required int nroVl,
      @JsonKey(name: 'fecha_vl', defaultValue: '')
          required String fechaVl,
      @JsonKey(name: 'nro_prog_trenes', defaultValue: 0)
          required int nroProgTrenes,
      @JsonKey(name: 'nro_tren', defaultValue: 0)
          required int nroTren,
      @JsonKey(name: 'fecha_tren', defaultValue: '')
          required String fechaTren,
      @JsonKey(name: 'ramal_origen', defaultValue: '')
          required String ramalOrigen,
      @JsonKey(name: 'est_origen', defaultValue: '')
          required String estOrigen,
      @JsonKey(name: 'km_inicial_vl', defaultValue: 0.0)
          required double kmInicialVl,
      @JsonKey(name: 'ramal_destino', defaultValue: '')
          required String ramalDestino,
      @JsonKey(name: 'km_final_vl', defaultValue: 0.0)
          required double kmFinalVl,
      @JsonKey(name: 'estado_vl', defaultValue: '')
          required String estadoVl,
      @JsonKey(name: 'fecha_salida', defaultValue: '')
          required String fechaSalida,
      @JsonKey(name: 'op_responsable', defaultValue: 0)
          required int opResponsable,
      @JsonKey(name: 'ramal_pos', defaultValue: '')
          required String ramalPos,
      @JsonKey(name: 'est_pos', defaultValue: '')
          required String estPos,
      @JsonKey(name: 'km_pos_vl', defaultValue: 0.0)
          required double kmPosVl,
      @JsonKey(name: 'fecha_pos_vl', defaultValue: '')
          required String fechaPosVl,
      @JsonKey(name: 'observacion', defaultValue: '')
          required String observacion,
      @JsonKey(name: 'cod_usr', defaultValue: '')
          required String codUsr,
      @JsonKey(name: 'vl_ferronor', defaultValue: 0)
          required int vlFerronor,
      @JsonKey(name: 'orden_disco', defaultValue: '')
          required String ordenDisco,
      @JsonKey(name: 'maniobra', defaultValue: '')
          required String maniobra,
      @JsonKey(name: 'cruza', defaultValue: '')
          required String cruza,
      @JsonKey(name: 'fecha_creacion', defaultValue: '')
          required String fechaCreacion,
      @Default([])
          List<RamalPoint> ramalPoints}) = _ViaLibreLine;

  factory ViaLibreLine.fromJson(Map<String, dynamic> json) =>
      _$ViaLibreLineFromJson(json);
}
