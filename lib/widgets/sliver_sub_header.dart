import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/global_setting/global_setting_bloc.dart';
import '../utils/sliver_persistent_header_delegate.dart';

class SliverSubHeader extends StatelessWidget {
  final String text;

  const SliverSubHeader(
      {Key? key, required this.text,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1
    return BlocBuilder<GlobalSettingBloc, GlobalSettingState>(
      builder: (context, state) {
        return SliverPersistentHeader(
          pinned: true,
          delegate: SliverAppBarDelegate(
            // 2
            minHeight: 40,
            maxHeight: 70,
            // 3
            child: Container(
              color: state.isDark ? Colors.black : Colors.white,
              child: Center(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}