import 'package:freezed_annotation/freezed_annotation.dart';

part 'contador_loco.freezed.dart';
part 'contador_loco.g.dart';

@freezed
class ContadorLoco with _$ContadorLoco {
  factory ContadorLoco({
    @JsonKey(name: 'estacion', defaultValue: '') required String estacion,
    @JsonKey(name: 'linea', defaultValue: '') required String linea,
    @JsonKey(name: 'color', defaultValue: '') required String color,
    @JsonKey(name: 'cant', defaultValue: 0) required int cant,
    @JsonKey(name: 'mar_mante', defaultValue: '') required String marMante
  }) = _ContadorLoco;

  factory ContadorLoco.fromJson(Map<String, dynamic> json) =>
      _$ContadorLocoFromJson(json);
}
