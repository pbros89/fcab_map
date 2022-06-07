import 'package:bloc/bloc.dart';
import 'package:fcab_map/models/terminal_acido.dart';
import 'package:fcab_map/models/terminal_point.dart';
import 'package:equatable/equatable.dart';

import '../../services/mock/geo_service_mock.dart';

part 'detail_terminal_event.dart';
part 'detail_terminal_state.dart';

class DetailTerminalBloc extends Bloc<DetailTerminalEvent, DetailTerminalState> {
  final GeoServiceMock _geoServiceMock = GeoServiceMock();
  DetailTerminalBloc() : super(DetailTerminalInitial()) {
    on<DetailTerminalInitEvent>(_onInit);
    on<DetailTerminalLoadEvent>(_onLoad);
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

        print('terminalAcidos ' + terminalAcidos.length.toString());

        emit.call(DetailTerminalLoaded(
          terminalAcidos: terminalAcidos,
          sections: sections
        ));
      } catch (e) {
        emit.call(DetailTerminalError(message: e.toString()));
      }
  }
}
