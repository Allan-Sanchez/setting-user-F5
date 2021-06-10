import 'package:flutter/material.dart';
import 'package:settinguser/src/share_prefs/preferences_user.dart';

import 'package:settinguser/src/widgets/my-drawer.dart';

class SettingPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _secundaryColor = false;
  int _gender;

  TextEditingController _textController;
  final prefs = PreferencesUser();

  @override
  void initState() {
    super.initState();
    prefs.lastPage = SettingPage.routeName;
    _gender = prefs.gender;
    _secundaryColor = prefs.secundaryColor;
    _textController = new TextEditingController(text: prefs.userName);
  }

  _setSelectedRadio(int value) {
    prefs.gender = value;
    _gender = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ajustes'),
          backgroundColor: (prefs.secundaryColor) ? Colors.teal : Colors.blue,
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              child: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(),
            SwitchListTile(
              value: _secundaryColor,
              title: Text('Color Secundario'),
              onChanged: (value) {
                setState(() {
                  _secundaryColor = value;
                  prefs.secundaryColor = value;
                });
              },
            ),
            RadioListTile(
              value: 1,
              groupValue: _gender,
              title: Text('Masculino'),
              onChanged: (value) {
                setState(() {
                  _setSelectedRadio(value);
                });
              },
            ),
            RadioListTile(
              value: 2,
              groupValue: _gender,
              title: Text('Femenino'),
              onChanged: (value) {
                setState(() {
                  _setSelectedRadio(value);
                });
              },
            ),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  labelText: 'Nombre:',
                ),
                onChanged: (value) {
                  prefs.userName = value;
                },
              ),
            )
          ],
        ));
  }
}
