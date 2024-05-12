import 'package:flutter/widgets.dart';

class ChowAvatarInherited extends InheritedWidget {
  const ChowAvatarInherited({
    super.key,
    required super.child,
    required this.radius,
  });

  final double radius;

  static ChowAvatarInherited? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ChowAvatarInherited>();
  }

  @override
  bool updateShouldNotify(ChowAvatarInherited oldWidget) {
    return oldWidget.radius != radius;
  }
}
