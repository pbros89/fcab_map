import 'package:bloc/bloc.dart';
import 'package:fcab_map/models/terminal_acido.dart';
import 'package:fcab_map/models/terminal_point.dart';
import 'package:equatable/equatable.dart';

import '../../models/contador_carro.dart';
import '../../models/contador_loco.dart';
import '../../models/detalle_carro.dart';
import '../../models/detalle_loco.dart';
import '../../services/mock/geo_service_mock.dart';

part 'detail_terminal_event.dart';
part 'detail_terminal_state.dart';

class DetailTerminalBloc extends Bloc<DetailTerminalEvent, DetailTerminalState> {
  final GeoServiceMock _geoServiceMock = GeoServiceMock();
  DetailTerminalBloc() : super(DetailTerminalInitial()) {
    on<DetailTerminalInitEvent>(_onInit);
    on<DetailTerminalLoadEvent>(_onLoad);
    on<DetailTerminalSelectLocoEvent>(_onSelectLocomotora);
    on<DetailTerminalSelectCarroEvent>(_onSelectCarro);
  }

  void _onInit(DetailTerminalInitEvent event, Emitter<DetailTerminalState> emit) {
    emit.call(DetailTerminalInitial());
  }

  void _onLoad(DetailTerminalLoadEvent event, Emitter<DetailTerminalState> emit) async {
      try {
        int sections = 1;
        emit.call(DetailTerminalLoading());

        List<TerminalAcido> terminalAcidos = await _geoServiceMock.loadTerminalAcido(event.terminalPoint.codEstacion);
        if(terminalAcidos.isNotEmpty) sections++;

        final contadorLoco = await _geoServiceMock.loadContadorLocomotoras(event.terminalPoint.codEstacion);
        if(contadorLoco.isNotEmpty) sections++;


        List<ContadorCarro> contadorCarro = await _geoServiceMock.loadContadorCarros(event.terminalPoint.codEstacion);
        if(contadorCarro.isNotEmpty) sections++;

        emit.call(DetailTerminalLoaded(
          terminalAcidos: terminalAcidos,
          contadorCarro: contadorCarro,
          contadorLoco: contadorLoco,
          sections: sections
        ));
      } catch (e) {
        emit.call(DetailTerminalError(message: e.toString()));
      }
  }

  void _onSelectLocomotora(DetailTerminalSelectLocoEvent event, Emitter<DetailTerminalState> emit) async {
      try {
        emit.call(DetailTerminalLoading());
        print('loading');
        final detalleLoco = await _geoServiceMock.loadDetalleLocomotoras(
            event.contadorLocoSelect.estacion, 
            event.contadorLocoSelect.linea,
            event.contadorLocoSelect.marMante);
        print(detalleLoco.length);
        emit.call(DetailTerminalLoaded(
          terminalAcidos: event.terminalAcidos,
          contadorCarro: event.contadorCarro,
          contadorLoco: event.contadorLoco, 
          contadorLocoSelect: event.contadorLocoSelect,
          detalleLoco: detalleLoco,
          sections: event.sections
        ));
      } catch (e) {
        emit.call(DetailTerminalError(message: e.toString()));
      }
  }


  void _onSelectCarro(DetailTerminalSelectCarroEvent event, Emitter<DetailTerminalState> emit) async {
      try {
        emit.call(DetailTerminalLoading());
        print('loading');
        final detalleCarro = await _geoServiceMock.loadDetalleCarros(
            event.contadorCarroSelect.estacion, 
            event.contadorCarroSelect.tipoCarro,
            event.contadorCarroSelect.linea,
            event.contadorCarroSelect.marcaMante);
        print(detalleCarro.length);
        emit.call(DetailTerminalLoaded(
          terminalAcidos: event.terminalAcidos,
          contadorCarro: event.contadorCarro,
          contadorLoco: event.contadorLoco, 
          contadorCarroSelect: event.contadorCarroSelect,
          detalleCarro: detalleCarro,
          sections: event.sections
        ));
      } catch (e) {
        emit.call(DetailTerminalError(message: e.toString()));
      }
  }
}
