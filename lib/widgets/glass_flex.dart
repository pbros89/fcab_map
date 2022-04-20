import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class GlassFlex extends StatelessWidget {
  final Widget child;
  final int flex;
  const GlassFlex({Key? key, required this.child, this.flex = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassmorphicFlexContainer(
        flex: 1,
        padding: const EdgeInsets.all(8),
        borderRadius: 10,
        blur: 10,
        alignment: Alignment.bottomCenter,
        border: 1,
        linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white.withOpacity(0.3),
              Colors.white.withOpacity(0.1),
            ],
            stops: const [
              0.1,
              1,
            ]),
        borderGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.5),
            Colors.white.withOpacity(0.5),
          ],
        ),
        child: child);
  }
}
