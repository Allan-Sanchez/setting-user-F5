import 'package:flutter/material.dart';
import 'package:settinguser/src/share_prefs/preferences_user.dart';
import 'package:settinguser/src/widgets/my-drawer.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new PreferencesUser();
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    prefs.lastPage = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias del usuario'),
        backgroundColor: (prefs.secundaryColor) ? Colors.teal : Colors.blue,
      ),
      drawer: MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color secundario: ${prefs.secundaryColor}'),
          Divider(),
          Text('Genero : ${prefs.gender}'),
          Divider(),
          Text('Nombre de Usuario: ${prefs.userName}'),
          Divider(),
        ],
      ),
    );
  }
}
