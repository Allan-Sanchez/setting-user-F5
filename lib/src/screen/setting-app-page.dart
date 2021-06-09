import 'package:flutter/material.dart';
import 'package:settinguser/src/widgets/my-drawer.dart';

class SettingPage extends StatelessWidget {
  static final String routeName = 'settings';
  // const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Ajustes pages'),
      ),
    );
  }
}
