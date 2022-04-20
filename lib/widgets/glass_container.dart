import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class GlassContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final double borderRadius;
  final double blur;
  final Color color;
  final double border;
  final double margin;
  final double padding;
  const GlassContainer(
      {Key? key,
      required this.child,
      this.height = double.infinity,
      this.width = double.infinity,
      this.blur = 10,
      this.borderRadius = 10,
      this.margin = 0,
      this.padding = 8,
      this.color = Colors.white,
      this.border = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        borderRadius: borderRadius,
        blur: blur,
        border: border,
        margin: EdgeInsets.all(margin),
        linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color.withOpacity(0.5),
              color.withOpacity(0.2),
            ],
            stops: const [
              0.1,
              1,
            ]),
        borderGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            color.withOpacity(0.5),
            color.withOpacity(0.5),
          ],
        ),
        child: child);
  }
}
