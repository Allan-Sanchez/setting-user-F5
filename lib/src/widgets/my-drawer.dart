import 'package:flutter/material.dart';
import 'package:settinguser/src/screen/home-page.dart';
import 'package:settinguser/src/screen/setting-app-page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/menu-img.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.pages),
            title: Text('Principal'),
            onTap: () => Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Usuarios'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configuraciones'),
            onTap: () {
              // Navigator.pop(context);
              // Navigator.pushNamed(context, SettingPage.routeName);
              //todas las rutas mantienen el drawer
              Navigator.pushReplacementNamed(context, SettingPage.routeName);
            },
          )
        ],
      ),
    );
  }
}
