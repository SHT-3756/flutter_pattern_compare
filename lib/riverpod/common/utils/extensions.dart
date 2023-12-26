import 'package:flutter/material.dart';

extension BuildContextExtentions on BuildContext {
  ThemeData get _theme => Theme.of(this);

  TextTheme get textTheme => _theme.textTheme;

  ColorScheme get colorScheme => _theme.colorScheme;

  Size get deviceSize => MediaQuery.sizeOf(this);
}

extension IconExtentions on Icon {
  Icon copyWithIcon({
    double? size,
    Color? color,
    String? semanticLabel,
    TextDirection? textDirection,
  }) {
    return Icon(
      icon,
      size: size ?? this.size,
      color: color ?? this.color,
      semanticLabel: semanticLabel ?? this.semanticLabel,
      textDirection: textDirection ?? this.textDirection,
    );
  }
}

/*
// 예시
class IconItem extends StatelessWidget {
  late Icon mainIcon;
  String name = 'text';

  IconItem(Icon mainIcon) {
    this.mainIcon = mainIcon.copyWithIcon(size: 40);
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
*/
