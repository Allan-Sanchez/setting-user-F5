import 'package:flutter/material.dart';
import 'package:settinguser/src/widgets/my-drawer.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias del usuario'),
      ),
      drawer: MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color secundario:'),
          Divider(),
          Text('Genero :'),
          Divider(),
          Text('Nombre de Usuario:'),
          Divider(),
        ],
      ),
    );
  }
}
