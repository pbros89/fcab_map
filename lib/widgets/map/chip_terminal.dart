import 'package:badges/badges.dart';
import 'package:fcab_map/utils/dialog_utils.dart';
import 'package:fcab_map/utils/geo_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';

import '../../bloc/chip_terminal/chip_terminal_bloc.dart';
import '../../bloc/global_setting/global_setting_bloc.dart';
import '../../models/terminal_point.dart';

class ChipTerminales extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  final List<TerminalPoint> terminales;
  ChipTerminales({Key? key, required this.terminales}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .caption
        ?.copyWith(fontWeight: FontWeight.bold);
    return Badge(
        badgeColor: Colors.teal,
        badgeContent: Text(terminales.length.toString(), style: textTheme),
        child: ElevatedButton(
            child: Text(
              'Terminales',
              style: textTheme,
            ),
            onPressed: () => showDialogTerminales(context)));
  }

  showDialogTerminales(BuildContext context) {
    BlocProvider.of<ChipTerminalBloc>(context)
        .add(ChipTerminalSearchEvent(searchController.text, terminales));
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
                listTerminales(),
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
      backgroundColor: Colors.teal,
      leading: SizedBox(),
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          'Terminales',
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
        backgroundColor: Colors.teal,
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
              BlocProvider.of<ChipTerminalBloc>(context)
                  .add(ChipTerminalSearchEvent(value, terminales));
            },
            decoration: InputDecoration(
                border: InputBorder.none,
                isDense: true,
                labelText: 'Buscar',
                suffixIcon: IconButton(
                    onPressed: () {
                      searchController.clear();
                      BlocProvider.of<ChipTerminalBloc>(context)
                          .add(ChipTerminalSearchEvent('', terminales));
                    },
                    icon: const Icon(Icons.clear))),
          ),
        ));
  }

  listTerminales() {
    return BlocBuilder<ChipTerminalBloc, ChipTerminalState>(
        builder: (context, state) {
      if (state is ChipTerminalLoaded) {
        return SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            final TerminalPoint terminal = state.terminales[index];

            return ListTile(
              title: Text(terminal.codEstacion),
              trailing: Text(terminal.codRamal),
              dense: true,
              onTap: () => goToMap(context, LatLng(terminal.lat, terminal.lon)),
            );
          }, childCount: state.terminales.length),
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
