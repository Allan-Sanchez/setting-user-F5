import 'package:flutter/material.dart';
import 'package:settinguser/src/screen/home-page.dart';
import 'package:settinguser/src/screen/setting-app-page.dart';
import 'package:settinguser/src/share_prefs/preferences_user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferencesUser();
  await prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    final prefs = new PreferencesUser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Configuraciones del usuario',
      initialRoute: prefs.lastPage,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        SettingPage.routeName: (BuildContext context) => SettingPage()
      },
    );
  }
}
