import 'package:cbmes_v1/themes/dark.theme.dart';
import 'package:cbmes_v1/themes/light.theme.dart';
import 'package:flutter/widgets.dart';

class Themes extends ChangeNotifier {
  var theme = lightTheme();
  bool onDarkTheme = false;
  bool iconsColors = false;

  String ui = 'Moderna';
  String cThemes = 'Light';
  String cIcons = 'Outline';

  bool photoChange = true;
  String photoPerfil = 'assets/user/perfil/CharlizeTheron.png';

  setPhotoPerfil() {
    if (photoChange == true) photoPerfil = 'assets/user/perfil/CharlizeTheron.png';

    if (photoChange == false) photoPerfil = 'assets/user/perfil/NewCharlizeTheron.png';

    notifyListeners();
  }

  setPhotoChange() {
    photoChange = !photoChange;
    setPhotoPerfil();
    notifyListeners();
  }

  setTheme(String value) {
    switch (value) {
      case "Light":
        {
          theme = lightTheme();
          onDarkTheme = false;
        }
        break;

      case "Dark":
        {
          theme = darkTheme();
          onDarkTheme = true;
        }
        break;

      default:
        {
          theme = lightTheme();
        }
        break;
    }
    notifyListeners();
  }

  setIcons(String value) {
    switch (value) {
      case "Outline":
        {
          iconsColors = false;
        }
        break;

      case "Colorful":
        {
          iconsColors = true;
        }
        break;

      default:
        {
          iconsColors = false;
        }
        break;
    }
    notifyListeners();
  }
}
