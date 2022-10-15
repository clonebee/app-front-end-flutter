// Place fonts/SupervisoryIcons.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: SupervisoryIcons
//      fonts:
//       - asset: fonts/SupervisoryIcons.ttf
import 'package:flutter/widgets.dart';

class SupervisoryIcons {
  SupervisoryIcons._();

  static const String _fontFamily = 'SupervisoryIcons';

  static const IconData serie = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData step = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData exponential = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData webcam = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData alert = IconData(0xe904, fontFamily: _fontFamily);
}
