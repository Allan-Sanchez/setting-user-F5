import 'package:shared_preferences/shared_preferences.dart';

class PreferencesUser {
  static final PreferencesUser _instancia = new PreferencesUser._internal();

  factory PreferencesUser() {
    return _instancia;
  }

  PreferencesUser._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  //Get y set del genero
  get gender {
    return _prefs.getInt('gender') ?? 1;
  }

  set gender(int value) {
    _prefs.setInt('gender', value);
  }

  //Get y set del secundaryColor
  get secundaryColor {
    return _prefs.getBool('secundaryColor') ?? false;
  }

  set secundaryColor(bool value) {
    _prefs.setBool('secundaryColor', value);
  }

  //Get y set del userName
  get userName {
    return _prefs.getString('userName') ?? '';
  }

  set userName(String value) {
    _prefs.setString('userName', value);
  }

  //Get y set del lastPage
  get lastPage {
    return _prefs.getString('lastPage') ?? 'home';
  }

  set lastPage(String value) {
    _prefs.setString('lastPage', value);
  }
}
