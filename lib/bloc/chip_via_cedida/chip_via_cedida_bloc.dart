import 'package:bloc/bloc.dart';
import 'package:fcab_map/models/via_cedida_line.dart';
import 'package:meta/meta.dart';

part 'chip_via_cedida_event.dart';
part 'chip_via_cedida_state.dart';

class ChipViaCedidaBloc extends Bloc<ChipViaCedidaEvent, ChipViaCedidaState> {
  ChipViaCedidaBloc() : super(ChipViaCedidaInitial()) {
    on<ChipViaCedidaSearchEvent>((event, emit) async {
      emit.call(ChipViaCedidaLoading());
      List<ViaCedidaLine> list = event.vias;
       
      await Future.delayed(const Duration(milliseconds: 200));

      if(event.search.trim().isNotEmpty){
        list = event.vias.where((element) => 
          element.numeroViaCedida.toString().contains(event.search.toUpperCase()))
          .toList();
      }

      print(list[0].descripcion);

      emit.call(ChipViaCedidaLoaded(list));
    });
  }
}
