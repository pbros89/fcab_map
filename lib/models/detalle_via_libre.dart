import 'package:fcab_map/models/ramal_point.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detalle_via_libre.freezed.dart';
part 'detalle_via_libre.g.dart';

@freezed
class DetalleViaLibre with _$DetalleViaLibre {
  factory DetalleViaLibre({
      @JsonKey(name: 'nro_programa', defaultValue: 0)
      required int nroPrograma,
      @JsonKey(name: 'nro_tren', defaultValue: 0)
      required int nroTren,
      @JsonKey(name: 'clave', defaultValue: 0)
      required int clave,
      @JsonKey(name: 'fecha_vl', defaultValue: '')
      required String fechaVl,
      @JsonKey(name: 'hr_solicita', defaultValue: '')
      required String hrSolicita,
      @JsonKey(name: 'hora_vl', defaultValue: '')
      required String horaVl,
      @JsonKey(name: 'hr_confirma', defaultValue: '')
      required String hrConfirma,
      @JsonKey(name: 'reintentos', defaultValue: 0)
      required int reintentos,
      @JsonKey(name: 'pk_nro_vl', defaultValue: 0)
      required int pkNroVl,
      @JsonKey(name: 'fk_nro_tren', defaultValue: 0)
      required int fkNroTren,
      @JsonKey(name: 'nro_loco', defaultValue: 0)
      required int nroLoco,
      @JsonKey(name: 'pk_fecha_vl', defaultValue: '')
      required String pkFechaVl,
      @JsonKey(name: 'origen_vl', defaultValue: '')
      required String origenVl,
      @JsonKey(name: 'hr_salida_vl', defaultValue: '')
      required String hrSalidaVl,
      @JsonKey(name: 'destino_vl', defaultValue: '')
      required String destinoVl,
      @JsonKey(name: 'estado_vl', defaultValue: '')
      required String estadoVl,
      @JsonKey(name: 'observacion', defaultValue: '')
      required String observacion,
      @JsonKey(name: 'orden_disco', defaultValue: '')
      required String ordenDisco,
      @JsonKey(name: 'maniobra', defaultValue: '')
      required String maniobra,
      @JsonKey(name: 'cod_usr', defaultValue: '')
      required String codUsr,
      @JsonKey(name: 'operador', defaultValue: '')
      required String operador,
      @JsonKey(name: 'id_solicitud', defaultValue: 0)
      required int idSolicitud,
      @JsonKey(name: 'vl_ferronor', defaultValue: 0)
      required int vlFerronor}) = _DetalleViaLibre;

  factory DetalleViaLibre.fromJson(Map<String, dynamic> json) =>
      _$DetalleViaLibreFromJson(json);
}
