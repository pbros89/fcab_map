import 'package:bloc/bloc.dart';
import 'package:fcab_map/models/contador_carro.dart';
import 'package:fcab_map/models/contador_loco.dart';
import 'package:fcab_map/models/detalle_carro.dart';
import 'package:fcab_map/models/detalle_loco.dart';
import 'package:fcab_map/models/estacion_point.dart';
import 'package:equatable/equatable.dart';
import 'package:fcab_map/services/mock/geo_service_mock.dart';

part 'detail_estacion_event.dart';
part 'detail_estacion_state.dart';

class DetailEstacionBloc extends Bloc<DetailEstacionEvent, DetailEstacionState> {
  final GeoServiceMock _geoServiceMock = GeoServiceMock();
  DetailEstacionBloc() : super(DetailEstacionInitial()) {
    on<DetailEstacionInitEvent>(_onInit);
    on<DetailEstacionLoadEvent>(_onLoad);
    on<DetailEstacionSelectLocoEvent>(_onSelectLocomotora);
    on<DetailEstacionSelectCarroEvent>(_onSelectCarro);
  }

  void _onInit(DetailEstacionInitEvent event, Emitter<DetailEstacionState> emit) {
    emit.call(DetailEstacionInitial());
  }

  void _onLoad(DetailEstacionLoadEvent event, Emitter<DetailEstacionState> emit) async {
      try {
        int sections = 1;
        emit.call(DetailEstacionLoading());
        print('loading');
        final contadorLoco = await _geoServiceMock.loadContadorLocomotoras(event.estacionPoint.codEstacion);
        if(contadorLoco.isNotEmpty) sections++;

        List<ContadorCarro> contadorCarro = await _geoServiceMock.loadContadorCarros(event.estacionPoint.codEstacion);
        if(contadorCarro.isNotEmpty) sections++;

        emit.call(DetailEstacionLoaded(
          contadorCarro: contadorCarro,
          contadorLoco: contadorLoco,
          sections: sections
        ));
      } catch (e) {
        emit.call(DetailEstacionError(message: e.toString()));
      }
  }


  void _onSelectLocomotora(DetailEstacionSelectLocoEvent event, Emitter<DetailEstacionState> emit) async {
      try {
        emit.call(DetailEstacionLoading());
        print('loading');
        final detalleLoco = await _geoServiceMock.loadDetalleLocomotoras(
            event.contadorLocoSelect.estacion, 
            event.contadorLocoSelect.linea,
            event.contadorLocoSelect.marMante);
        print(detalleLoco.length);
        emit.call(DetailEstacionLoaded(
          contadorCarro: event.contadorCarro,
          contadorLoco: event.contadorLoco, 
          contadorLocoSelect: event.contadorLocoSelect,
          detalleLoco: detalleLoco,
          sections: event.sections
        ));
      } catch (e) {
        emit.call(DetailEstacionError(message: e.toString()));
      }
  }


  void _onSelectCarro(DetailEstacionSelectCarroEvent event, Emitter<DetailEstacionState> emit) async {
      try {
        emit.call(DetailEstacionLoading());
        print('loading');
        final detalleCarro = await _geoServiceMock.loadDetalleCarros(
            event.contadorCarroSelect.estacion, 
            event.contadorCarroSelect.tipoCarro,
            event.contadorCarroSelect.linea,
            event.contadorCarroSelect.marcaMante);
        print(detalleCarro.length);
        emit.call(DetailEstacionLoaded(
          contadorCarro: event.contadorCarro,
          contadorLoco: event.contadorLoco, 
          contadorCarroSelect: event.contadorCarroSelect,
          detalleCarro: detalleCarro,
          sections: event.sections
        ));
      } catch (e) {
        emit.call(DetailEstacionError(message: e.toString()));
      }
  }
}
