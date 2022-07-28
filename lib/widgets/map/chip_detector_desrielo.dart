import 'package:badges/badges.dart';
import 'package:fcab_map/utils/dialog_utils.dart';
import 'package:fcab_map/utils/geo_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';

import '../../bloc/chip_detector_desrielo/chip_detector_desrielo_bloc.dart';
import '../../bloc/global_setting/global_setting_bloc.dart';
import '../../models/detector_desrielo_point.dart';

class ChipDetectorDesrielo extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  final Color colorPnl = Colors.orange;

  final List<DetectorDesrieloPoint> detectoresDesrielo;
  ChipDetectorDesrielo({Key? key, required this.detectoresDesrielo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .caption
        ?.copyWith(fontWeight: FontWeight.bold);
    return Badge(
        badgeColor: colorPnl,
        badgeContent: Text(detectoresDesrielo.length.toString(), style: textTheme),
        child: ElevatedButton(
            child: Text(
              'Detectores Desrielo',
              style: textTheme,
            ),
            onPressed: () => showDialogDetectorDesrielo(context)));
  }

  showDialogDetectorDesrielo(BuildContext context) {
    BlocProvider.of<ChipDetectorDesrieloBloc>(context)
        .add(ChipDetectorDesrieloSearchEvent(searchController.text, detectoresDesrielo));
    showMyDialog(
        context: context,
        child: Center(
          child: SizedBox(
            width: 400,
            height: 500,
            child: Card(
                child: CustomScrollView(
              slivers: [
                header(),
                headerSearch(context),
                listDetectorDesrielo(),
              ],
            )),
          ),
        ));
  }

  header() {
    return SliverAppBar(
      floating: true,
      pinned: false,
      centerTitle: true,
      elevation: 10,
      expandedHeight: 150.0,
      backgroundColor: colorPnl,
      leading: const SizedBox(),
      flexibleSpace: const FlexibleSpaceBar(
        title: Text(
          'Detector Desrielo',
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
        backgroundColor: colorPnl,
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
              BlocProvider.of<ChipDetectorDesrieloBloc>(context)
                  .add(ChipDetectorDesrieloSearchEvent(value, detectoresDesrielo));
            },
            decoration: InputDecoration(
                border: InputBorder.none,
                isDense: true,
                labelText: 'Buscar',
                suffixIcon: IconButton(
                    onPressed: () {
                      searchController.clear();
                      BlocProvider.of<ChipDetectorDesrieloBloc>(context)
                          .add(ChipDetectorDesrieloSearchEvent('', detectoresDesrielo));
                    },
                    icon: const Icon(Icons.clear))),
          ),
        ));
  }

  listDetectorDesrielo() {
    return BlocBuilder<ChipDetectorDesrieloBloc, ChipDetectorDesrieloState>(
        builder: (context, state) {
      if (state is ChipDetectorDesrieloLoaded) {
        return SliverList(

          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            final DetectorDesrieloPoint detectorDesrielo = state.detectoresDesrielo[index];
            
            return ListTile(
              title: Text(detectorDesrielo.descripcion),
              subtitle: Text('ID Radio: ${detectorDesrielo.idRadio}'),
              trailing: Text(detectorDesrielo.ramal),
              leading:  Tooltip(
                  message: 'ID DED',
                  child: CircleAvatar(
                    backgroundColor: detectorDesrielo.habilitado == 'SI' ? Colors.orange : Colors.red,
                    child: Text(
                      detectorDesrielo.idDetector.toString(),
                      style: Theme.of(context).primaryTextTheme.bodyLarge,
                    ),
                  ),
                ),
              tileColor: Theme.of(context).cardColor,
              dense: true,
              onTap: () => goToMap(context, LatLng(detectorDesrielo.lat, detectorDesrielo.lon)),
            );
          }, childCount: state.detectoresDesrielo.length,),
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
