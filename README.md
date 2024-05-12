# Chow_avatar

Choosing a profile picture has never been easier or better or magical like this. This is a complete avatar package that you can use for your profile and avatar.


## Package Parameters
| Parameter              | Description                                           | Type                 | Default                     |
|:-----------------------|:------------------------------------------------------|:---------------------|:----------------------------|
| `name`                 | Used for creating initials. (Regex split by r'\s+\/') | *String*             ||
| `size`                 | Avatar size (width = height).                         | *double*             | 80.0                        |
| `image`                | Avatar image source exclusively with [child].         | *ImageProvider*      ||
| `margin`               | Avatar margin.                                        | *EdgeInsetsGeometry* ||
| `style`                | Initials text style.                                  | *TextStyle*          ||
| `statusColor`          | Status color.                                         | *Color*              ||
| `statusSize`           | Status size.                                          | *double*             | 12.0                        |
| `statusAlignment`      | Status alignment.                                     | *Alignment*          | Alignment.topRight          |
| `decoration`           | Avatar decoration.                                    | *BoxDecoration*      | color, shape                |
| `foregroundDecoration` | Avatar foreground decoration.                         | *BoxDecoration*      ||
| `child`                | Child widget exclusively with [image].                | *Widget*             ||
| `children`             | Hosted widgets.                                       | *Widget*             ||
| `animated`             | Use AnimatedContainer                                 | *bool*               | false                       |
| `duration`             | AnimatedContainer duration                            | *Duration*           | Duration(milliseconds: 300) |
| `autoTextSize`         | Auto name text size                                   | *bool*               | false                       |


## Special Credit
The inspiration and guidiance to build this package was gotten from flutter_advanced_avatar [Alexmelnyk](https://pub.dev/packages/flutter_advanced_avatar)
- @alexmelnyk.io

## Contributor
A special contributor to this package [Agbama Ulimhunyie](https://www.linkedin.com/in/agbama-ulimhunyie-ab28311b7/)
- [Agbama Jnr](https://github.com/agbamajnr)

## Maintenance & Design Engineer 
- [Ulims](https://github.com/ulims)
