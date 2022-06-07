import 'package:badges/badges.dart';
import 'package:fcab_map/bloc/chip_tren/chip_tren_bloc.dart';
import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/models/tren_point.dart';
import 'package:fcab_map/utils/dialog_utils.dart';
import 'package:fcab_map/utils/geo_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';

class ChipTrenes extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  final List<TrenPoint> trenes;
  ChipTrenes({Key? key, required this.trenes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .caption
        ?.copyWith(fontWeight: FontWeight.bold);
    return Badge(
        badgeColor: Colors.red,
        badgeContent: Text(trenes.length.toString(), style: textTheme),
        child: ElevatedButton(
            child: Text(
              'Trenes',
              style: textTheme,
            ),
            onPressed: () => showDialogTrenes(context)));
  }

  showDialogTrenes(BuildContext context) {
    BlocProvider.of<ChipTrenBloc>(context)
        .add(ChipTrenSearchEvent(searchController.text, trenes));
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
                    listTrenes(),
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
      backgroundColor: Colors.red,
      leading: SizedBox(),
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          'Trenes',
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
        backgroundColor: Colors.red,
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
              BlocProvider.of<ChipTrenBloc>(context)
                  .add(ChipTrenSearchEvent(value, trenes));
            },
            decoration: InputDecoration(
              border: InputBorder.none,
                isDense: true,
                labelText: 'Buscar',
                suffixIcon: IconButton(
                    onPressed: () {
                      searchController.clear();
                      BlocProvider.of<ChipTrenBloc>(context)
                          .add(ChipTrenSearchEvent('', trenes));
                    },
                    icon: const Icon(Icons.clear))),
          ),
        ));
  }

  listTrenes() {
    return BlocBuilder<ChipTrenBloc, ChipTrenState>(
        builder: (context, state) {
      if (state is ChipTrenLoaded) {
        return SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            final TrenPoint tren = state.trenes[index];

            return ListTile(
              title: Text(tren.nroTren.toString()),
              subtitle: Text('Hora Salida: ${tren.hrSalida}\nHora Llegada Estimada: ${tren.hrLlegada}'),
              trailing: Text(tren.codRamal),
              dense: true,
              onTap: () => goToMap(context, LatLng(tren.lat, tren.lon)),
            );
          },childCount: state.trenes.length),
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
