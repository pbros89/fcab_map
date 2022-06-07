import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/global_setting/global_setting_bloc.dart';

class UserSearchBar extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  UserSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = BlocProvider.of<GlobalSettingBloc>(context);
    return SliverAppBar(
        pinned: true,
        leadingWidth: 0,
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
              /*BlocProvider.of<ChipTerminalBloc>(context)
                  .add(ChipTerminalSearchEvent(value, terminales));*/
            },
            decoration: InputDecoration(
                border: InputBorder.none,
                isDense: true,
                labelText: 'Buscar',
                suffixIcon: IconButton(
                    onPressed: () {
                      searchController.clear();
                      /*BlocProvider.of<ChipTerminalBloc>(context)
                          .add(ChipTerminalSearchEvent('', terminales));*/
                    },
                    icon: const Icon(Icons.clear))),
          ),
        ));
  }
}