import 'package:fcab_map/models/ramal_point.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'via_libre_point.freezed.dart';
part 'via_libre_point.g.dart';

@freezed
class ViaLibrePoint with _$ViaLibrePoint {
  factory ViaLibrePoint(
      {@JsonKey(name: 'nro_vl')
          required int nroVl,
      @JsonKey(name: 'fecha_vl')
          required String fechaVl,
      @JsonKey(name: 'nro_prog_trenes')
          required int nroProgTrenes,
      @JsonKey(name: 'nro_tren')
          required int nroTren,
      @JsonKey(name: 'fecha_tren')
          required String fechaTren,
      @JsonKey(name: 'ramal_origen')
          required String ramalOrigen,
      @JsonKey(name: 'est_origen')
          required String estOrigen,
      @JsonKey(name: 'km_ini')
          required double kmIni,
      @JsonKey(name: 'ramal_destino')
          required String ramalDestino,
      @JsonKey(
        name: 'km_fin',
      )
          required String kmFin,
      @JsonKey(
        name: 'estado_vl',
      )
      @Default("")
          String estadoVl,
      @JsonKey(
        name: 'fecha_salida',
      )
      @Default("")
          String fechaSalida,
      @JsonKey(
        name: 'op_responsable',
      )
      @Default(0)
          int opResponsable,
      @JsonKey(
        name: 'ramal_pos',
      )
      @Default("")
          String ramalPos,
      @JsonKey(
        name: 'est_pos',
      )
      @Default("")
          String estPos,
      @JsonKey(
        name: 'km_pos',
      )
      @Default(0.0)
          double kmPos,
      @JsonKey(
        name: 'fecha_pos_vl',
      )
      @Default("")
          String fechaPosVl,
      @JsonKey(
        name: 'observacion',
      )
      @Default("")
          String observacion,
      @JsonKey(
        name: 'cod_usr',
      )
      @Default("")
          String codUsr,
      @JsonKey(
        name: 'vl_ferronor',
      )
      @Default("")
          String vlFerronor,
      @JsonKey(
        name: 'orden_disco',
      )
      @Default("")
          String ordenDisco,
      @JsonKey(
        name: 'maniobra',
      )
      @Default("")
          String maniobra,
      @JsonKey(
        name: 'cruza',
      )
      @Default("")
          String cruza,
      @JsonKey(
        name: 'fecha_creacion',
      )
      @Default("")
          String fechaCreacion,
      @Default([])
          List<RamalPoint> listPoints}) = _ViaLibrePoint;

  factory ViaLibrePoint.fromJson(Map<String, dynamic> json) =>
      _$ViaLibrePointFromJson(json);
}
