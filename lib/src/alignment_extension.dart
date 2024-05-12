import 'dart:math';

import 'package:flutter/widgets.dart';
extension AlignmentExtension on Alignment {

  Offset toOffsetWithRadius({double radius = 0.0}) {
    final angle = atan2(y, x);
    final polarRadius = radius * min(1.0, sqrt(x * x + y * y));
    final offsetX = polarRadius * cos(angle) + radius;
    final offsetY = polarRadius * sin(angle) + radius;
    return Offset(offsetX, offsetY);
  }
}
