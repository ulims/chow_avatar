
import 'package:chow_avatar/src/chow_avatar_inherited.dart';
import 'package:chow_avatar/src/alignment_extension.dart';
import 'package:flutter/widgets.dart';

class AlignCircular extends StatelessWidget {
  const AlignCircular({
    super.key,
    required this.child,
    this.alignment = Alignment.center,
    this.radius = 0.0,
    this.size = Size.zero,
  });

  final Alignment alignment;

  final double radius;

  final Size size;


  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final offset = alignment.toOffsetWithRadius(
      radius: ChowAvatarInherited.of(context)?.radius ?? radius,
    );

    return Positioned(
      width: size.width,
      height: size.height,
      left: offset.dx - size.width / 2.0,
      top: offset.dy - size.height / 2.0,
      child: OverflowBox(
        alignment: Alignment.center,
        minWidth: 0,
        minHeight: 0,
        maxWidth: double.maxFinite,
        maxHeight: double.maxFinite,
        child: child,
      ),
    );
  }
}
