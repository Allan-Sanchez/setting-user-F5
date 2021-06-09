import 'package:flutter/material.dart';
import 'package:settinguser/src/screen/home-page.dart';
import 'package:settinguser/src/screen/setting-app-page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Configuraciones del usuario',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName : (BuildContext context) => HomePage(),
        SettingPage.routeName : (BuildContext context) => SettingPage()
      },
      
    );
  }
}