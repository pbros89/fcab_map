import 'package:badges/badges.dart';
import 'package:fcab_map/bloc/chip_estacion/chip_estacion_bloc.dart';
import 'package:fcab_map/models/estacion_point.dart';
import 'package:fcab_map/utils/dialog_utils.dart';
import 'package:fcab_map/utils/geo_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';

import '../../bloc/global_setting/global_setting_bloc.dart';

class ChipEstaciones extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  final List<EstacionPoint> estaciones;
  ChipEstaciones({Key? key, required this.estaciones}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .caption
        ?.copyWith(fontWeight: FontWeight.bold);
    return Badge(
        badgeColor: Colors.blue,
        badgeContent: Text(estaciones.length.toString(), style: textTheme),
        child: ElevatedButton(
            child: Text(
              'Estaciones',
              style: textTheme,
            ),
            onPressed: () => showDialogEstaciones(context)));
  }

  showDialogEstaciones(BuildContext context) {
    BlocProvider.of<ChipEstacionBloc>(context)
        .add(ChipEstacionSearchEvent(searchController.text, estaciones));
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
                listEstaciones(),
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
      elevation: 0,
      expandedHeight: 150.0,
      backgroundColor: Colors.blue,
      leading: SizedBox(),
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          'Estaciones',
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
        elevation: 0,
        backgroundColor: Colors.blue,
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
            keyboardType: TextInputType.text,
            onChanged: (value) {
              BlocProvider.of<ChipEstacionBloc>(context)
                  .add(ChipEstacionSearchEvent(value, estaciones));
            },
            decoration: InputDecoration(
                border: InputBorder.none,
                isDense: true,
                labelText: 'Buscar',
                suffixIcon: IconButton(
                    onPressed: () {
                      searchController.clear();
                      BlocProvider.of<ChipEstacionBloc>(context)
                          .add(ChipEstacionSearchEvent('', estaciones));
                    },
                    icon: const Icon(Icons.clear))),
          ),
        ));
  }

  listEstaciones() {
    return BlocBuilder<ChipEstacionBloc, ChipEstacionState>(
        builder: (context, state) {
      if (state is ChipEstacionLoaded) {
        return SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            final EstacionPoint estacion = state.estaciones[index];
            
            return ListTile(
              title: Text(estacion.codEstacion),
              trailing: Text(estacion.codRamal),
              dense: true,
              onTap: () => goToMap(context, LatLng(estacion.lat, estacion.lon)),
            );
          }, childCount: state.estaciones.length),
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
