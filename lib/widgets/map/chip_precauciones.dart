import 'package:badges/badges.dart';
import 'package:fcab_map/utils/dialog_utils.dart';
import 'package:fcab_map/utils/geo_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';

import '../../bloc/chip_precauciones/chip_precauciones_bloc.dart';
import '../../bloc/global_setting/global_setting_bloc.dart';
import '../../models/precaucion_line.dart';

class ChipPrecauciones extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  final List<PrecaucionLine> precauciones;
  ChipPrecauciones({Key? key, required this.precauciones}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .caption
        ?.copyWith(fontWeight: FontWeight.bold);
    return Badge(
        badgeColor: Colors.purple,
        badgeContent: Text(precauciones.length.toString(), style: textTheme),
        child: ElevatedButton(
            child: Text(
              'Precauciones',
              style: textTheme,
            ),
            onPressed: () => showDialogCV(context)));
  }

  showDialogCV(BuildContext context) {
    BlocProvider.of<ChipPrecaucionesBloc>(context)
        .add(ChipPrecaucionesSearchEvent(searchController.text, precauciones));
    showMyDialog(
        context: context,
        child: Center(
          child: SizedBox(
            width: 400,
            height: 450,
            child: Card(
                child: CustomScrollView(
              slivers: [
                header(),
                headerSearch(context),
                listVias(),
              ],
            )),
          ),
        ));
  }

  header() {
    return const SliverAppBar(
      floating: false,
      pinned: false,
      centerTitle: true,
      expandedHeight: 150.0,
      backgroundColor: Colors.purple,
      leading: SizedBox(),
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          'Precauciones',
        ),
        centerTitle: false,
        //background: Image.asset('assets/forest.jpg', fit: BoxFit.cover)
      ),
    );
  }

  headerSearch(BuildContext context) {
    final provider = BlocProvider.of<GlobalSettingBloc>(context);
    return SliverAppBar(
        pinned: true,
        leadingWidth: 0,
        backgroundColor: Colors.purple,
        leading: const SizedBox(),
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: provider.state.isDark ? Colors.black54 : Colors.white54,
          ),
          child: TextFormField(
            controller: searchController,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              BlocProvider.of<ChipPrecaucionesBloc>(context)
                  .add(ChipPrecaucionesSearchEvent(value, precauciones));
            },
            decoration: InputDecoration(
                focusColor: Colors.purple,
                border: InputBorder.none,
                isDense: true,
                labelText: 'Buscar',
                suffixIcon: IconButton(
                    onPressed: () {
                      searchController.clear();
                      BlocProvider.of<ChipPrecaucionesBloc>(context)
                          .add(ChipPrecaucionesSearchEvent('', precauciones));
                    },
                    icon: const Icon(Icons.clear))),
          ),
        ));
  }

  listVias() {
    return BlocBuilder<ChipPrecaucionesBloc, ChipPrecaucionesState>(
        builder: (context, state) {
      if (state is ChipPrecaucionesLoaded) {
        return SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            final PrecaucionLine precaucionLine = state.vias[index];

            return ListTile(
                title: Text('Tipo ${precaucionLine.tipo.toString()}'),
                subtitle: Text(
                  'Velocidad: ${precaucionLine.velocidad}\n'
                  'KM Desde: ${precaucionLine.kmDesde}  KM Hasta: ${precaucionLine.kmHasta}\n'
                  'Observación: ${precaucionLine.observacion}'),
                leading: Tooltip(
                  message: 'ID Precaución',
                  child: CircleAvatar(
                    backgroundColor: Colors.purple,
                    child: Text(
                      precaucionLine.numero.toString(),
                      style: Theme.of(context).primaryTextTheme.bodyLarge,
                    ),
                  ),
                ),
                trailing: Text(precaucionLine.codRamal),
                dense: true,
                onTap: () {
                  if (precaucionLine.listPoints.isNotEmpty) {
                    goToMap(context,
                        LatLng(precaucionLine.listPoints[0].lat, precaucionLine.listPoints[0].lon));
                  } else {
                    
                  }
                });
          }, childCount: state.vias.length),
        );
      }

      return const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    });
  }
}
