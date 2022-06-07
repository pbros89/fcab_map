import 'package:badges/badges.dart';
import 'package:fcab_map/utils/dialog_utils.dart';
import 'package:fcab_map/utils/geo_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';

import '../../bloc/chip_via_libre/chip_via_libre_bloc.dart';
import '../../bloc/global_setting/global_setting_bloc.dart';
import '../../models/via_libre_line.dart';

class ChipViaLibre extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  final List<ViaLibreLine> vias;
  ChipViaLibre({Key? key, required this.vias}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .caption
        ?.copyWith(fontWeight: FontWeight.bold);
    return Badge(
        badgeColor: Colors.lightBlue[200]!,
        badgeContent: Text(vias.length.toString(), style: textTheme),
        child: ElevatedButton(
            child: Text(
              'Vias Libres',
              style: textTheme,
            ),
            onPressed: () => showDialogCV(context)));
  }

  showDialogCV(BuildContext context) {
    BlocProvider.of<ChipViaLibreBloc>(context)
        .add(ChipViaLibreSearchEvent(searchController.text, vias));
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
    return SliverAppBar(
      floating: false,
      pinned: false,
      centerTitle: true,
      expandedHeight: 150.0,
      backgroundColor: Colors.lightBlue[200]!,
      leading: const SizedBox(),
      flexibleSpace: const FlexibleSpaceBar(
        title: Text(
          'Vías Libres',
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
        backgroundColor: Colors.lightBlue[200]!,
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
              BlocProvider.of<ChipViaLibreBloc>(context)
                  .add(ChipViaLibreSearchEvent(value, vias));
            },
            decoration: InputDecoration(
                focusColor: Colors.lightBlue[200]!,
                border: InputBorder.none,
                isDense: true,
                labelText: 'Buscar',
                suffixIcon: IconButton(
                    onPressed: () {
                      searchController.clear();
                      BlocProvider.of<ChipViaLibreBloc>(context)
                          .add(ChipViaLibreSearchEvent('', vias));
                    },
                    icon: const Icon(Icons.clear))),
          ),
        ));
  }

  listVias() {
    return BlocBuilder<ChipViaLibreBloc, ChipViaLibreState>(
        builder: (context, state) {
      if (state is ChipViaLibreLoaded) {
        return SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            final ViaLibreLine via = state.vias[index];

            return ListTile(
                title: Text('Tren ${via.nroTren.toString()}'),
                subtitle: Text('KM INI: ${via.kmInicialVl}  /  '
                    'KM FIN: ${via.kmFinalVl}'
                    '\nKM POS: ${via.kmPosVl}'
                    '\nUsuario: ${via.codUsr}'),
                leading: Tooltip(
                  message: 'Número Vía Libre',
                  child: CircleAvatar(
                    backgroundColor: Colors.blue[200],
                    child: Text(
                      via.nroVl.toString(),
                      style: Theme.of(context).primaryTextTheme.bodyLarge,
                    ),
                  ),
                ),
                trailing: Text(via.ramalOrigen),
                dense: true,
                onTap: () => goToMap(context,
                    LatLng(via.ramalPoints[0].lat, via.ramalPoints[0].lon)));
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
