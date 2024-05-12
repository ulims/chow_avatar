
import 'package:chow_avatar/src/chow_avatar_inherited.dart';
import 'package:flutter/widgets.dart';


import 'align_circular.dart';
import 'string_extension.dart';



const _defaultAvatarSize = 40.0;
const _defaultAbbreviationFontSize = 15.0;

class ChowAvatar extends StatelessWidget {
  const ChowAvatar({
    super.key,
    this.name,
    this.size = _defaultAvatarSize,
    this.image,
    this.margin,
    this.style,
    this.statusColor,
    this.statusSize = 12.0,
    this.statusAlignment = Alignment.bottomRight,
    this.decoration = const BoxDecoration(
      shape: BoxShape.circle,
      color: Color.fromRGBO(0, 0, 0, 1),
    ),
    this.foregroundDecoration,
    this.child,
    this.children = const <Widget>[],
    this.animated = false,
    this.duration = const Duration(milliseconds: 300),
    this.autoTextSize = false,
  });

  final String? name;


  final double size;


  final ImageProvider<Object>? image;

  final EdgeInsetsGeometry? margin;

  final TextStyle? style;

  final Color? statusColor;

  final double statusSize;

  final Alignment statusAlignment;

  final BoxDecoration decoration;

  final BoxDecoration? foregroundDecoration;

  final Widget? child;

  final List<Widget> children;

  final bool animated;
  final Duration duration;

  final bool autoTextSize;

  @override
  Widget build(BuildContext context) {
    final dynamicTextSize =
        _defaultAbbreviationFontSize * (size / _defaultAvatarSize);
    final textStyle = const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    ).merge(style);

    final sourceChild = DefaultTextStyle(
      style: autoTextSize
          ? textStyle.copyWith(fontSize: dynamicTextSize)
          : textStyle,
      child: image == null
          ? child == null
              ? Text(name.toAbbreviation())
              : child!
          : Image(
              image: image!,
              width: size,
              height: size,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) =>
                  child ?? Text(name.toAbbreviation()),
            ),
    );

    return UnconstrainedBox(
      child: ChowAvatarInherited(
        radius: size / 2.0,
        child: Container(
          width: size,
          height: size,
          margin: margin,
          child: Stack(
            children: [
              if (animated)
                AnimatedContainer(
                  duration: duration,
                  alignment: Alignment.center,
                  clipBehavior: Clip.antiAlias,
                  decoration: decoration,
                  foregroundDecoration: foregroundDecoration,
                  child: sourceChild,
                )
              else
                Container(
                  alignment: Alignment.center,
                  clipBehavior: Clip.antiAlias,
                  decoration: decoration,
                  foregroundDecoration: foregroundDecoration,
                  child: sourceChild,
                ),
              if (statusColor != null)
                AlignCircular(
                  alignment: statusAlignment,
                  child: Container(
                    width: statusSize,
                    height: statusSize,
                    decoration: BoxDecoration(
                      color: statusColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        width: 0.5,
                      ),
                    ),
                  ),
                ),
              for (final child in children) child,
            ],
          ),
        ),
      ),
    );
  }
}
