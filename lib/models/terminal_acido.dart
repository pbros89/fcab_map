import 'package:freezed_annotation/freezed_annotation.dart';

part 'terminal_acido.freezed.dart';
part 'terminal_acido.g.dart';

@freezed
class TerminalAcido with _$TerminalAcido {
  factory TerminalAcido({
    @JsonKey(name: 'pfk_cod_servicio') required String codServicio,
    @JsonKey(name: 'pfk_cod_terminal') required String codTerminal,
    @JsonKey(name: 'pfk_tipo_terminal') required String tipoTerminal,
    @JsonKey(name: 'pfk_cod_estanque') required String codEstanque,
    @JsonKey(name: 'pk_fecha_control') required String fechaControl,
    @JsonKey(name: 'nivel_acido') required double nivelAcido,
    @JsonKey(name: 'ton_acido') required double tonAcido,
  }) = _TerminalAcido;

  factory TerminalAcido.fromJson(Map<String, dynamic> json) =>
      _$TerminalAcidoFromJson(json);
}
