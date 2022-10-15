// Place fonts/ScheduleIcons.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: ScheduleIcons
//      fonts:
//       - asset: fonts/ScheduleIcons.ttf
import 'package:flutter/widgets.dart';

class ScheduleIcons {
  ScheduleIcons._();

  static const String _fontFamily = 'ScheduleIcons';

  static const IconData coast = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData employee = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData high = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData low = IconData(0xe907, fontFamily: _fontFamily);
  static const IconData medium = IconData(0xe90b, fontFamily: _fontFamily);
  static const IconData tags = IconData(0xe912, fontFamily: _fontFamily);
  static const IconData time = IconData(0xe913, fontFamily: _fontFamily);
}
