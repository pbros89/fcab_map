import 'package:badges/badges.dart';
import 'package:fcab_map/bloc/chip_via_cedida/chip_via_cedida_bloc.dart';
import 'package:fcab_map/models/via_cedida_line.dart';
import 'package:fcab_map/utils/dialog_utils.dart';
import 'package:fcab_map/utils/geo_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';

import '../../bloc/global_setting/global_setting_bloc.dart';

class ChipViaCedida extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  final List<ViaCedidaLine> vias;
  ChipViaCedida({Key? key, required this.vias}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .caption
        ?.copyWith(fontWeight: FontWeight.bold);
    return Badge(
        badgeColor: Colors.green,
        badgeContent: Text(vias.length.toString(), style: textTheme),
        child: ElevatedButton(
            child: Text(
              'Vias Cedidas',
              style: textTheme,
            ),
            onPressed: () => showDialogCV(context)));
  }

  showDialogCV(BuildContext context) {
    BlocProvider.of<ChipViaCedidaBloc>(context)
        .add(ChipViaCedidaSearchEvent(searchController.text, vias));
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
      backgroundColor: Colors.green,
      leading: SizedBox(),
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          'Vías Cedidas',
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
        backgroundColor: Colors.green,
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
              BlocProvider.of<ChipViaCedidaBloc>(context)
                  .add(ChipViaCedidaSearchEvent(value, vias));
            },
            decoration: InputDecoration(
                focusColor: Colors.green,
                border: InputBorder.none,
                isDense: true,
                labelText: 'Buscar',
                suffixIcon: IconButton(
                    onPressed: () {
                      searchController.clear();
                      BlocProvider.of<ChipViaCedidaBloc>(context)
                          .add(ChipViaCedidaSearchEvent('', vias));
                    },
                    icon: const Icon(Icons.clear))),
          ),
        ));
  }

  listVias() {
    return BlocBuilder<ChipViaCedidaBloc, ChipViaCedidaState>(
        builder: (context, state) {
      if (state is ChipViaCedidaLoaded) {
        return SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            final ViaCedidaLine via = state.vias[index];

            return ListTile(
                title: Text(via.descripcion),
                subtitle: Text('KM INI: ${via.kmIni}  /  '
                    'KM FIN: ${via.kmFin}'
                    '\nInicio: ${via.fecIni}  '
                    '\nTermino: ${via.fecFinEstimada}'
                    '\nResponsable: ${via.usrResponsable}'),
                leading: Tooltip(
                  message: 'Número Via Cedida',
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text(
                      via.numeroViaCedida.toString(),
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
