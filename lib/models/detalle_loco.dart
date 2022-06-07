import 'package:freezed_annotation/freezed_annotation.dart';

part 'detalle_loco.freezed.dart';
part 'detalle_loco.g.dart';

@freezed
class DetalleLoco with _$DetalleLoco {
  factory DetalleLoco({
    @JsonKey(name: 'estacion', defaultValue: '') required String estacion,
    @JsonKey(name: 'linea', defaultValue: '') required String linea,
    @JsonKey(name: 'loco', defaultValue: 0) required int loco,
    @JsonKey(name: 'color', defaultValue: '') required String color,
    @JsonKey(name: 'obs_marca', defaultValue: '') required String obsMarca,
    @JsonKey(name: 'mar_mante', defaultValue: '') required String marMante
  }) = _DetalleLoco;

  factory DetalleLoco.fromJson(Map<String, dynamic> json) =>
      _$DetalleLocoFromJson(json);
}
