// Place fonts/MenuIcons.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: MenuIcons
//      fonts:
//       - asset: fonts/MenuIcons.ttf
import 'package:flutter/widgets.dart';

class MenuIcons {
  MenuIcons._();

  static const String _fontFamily = 'MenuIcons';

  static const IconData menu_indicators = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData menu_inventory = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData menu_execution = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData menu_manufacture = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData menu_operational = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData menu_patterns = IconData(0xe905, fontFamily: _fontFamily);
  static const IconData menu_schedule = IconData(0xe906, fontFamily: _fontFamily);
  static const IconData menu_statistical_control = IconData(0xe907, fontFamily: _fontFamily);
  static const IconData menu_supervisory = IconData(0xe908, fontFamily: _fontFamily);
  static const IconData menu_users = IconData(0xe909, fontFamily: _fontFamily);
}
