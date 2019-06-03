import 'package:flutter/material.dart';
import 'package:my_app/drawer_navigation/home.dart';
import 'package:my_app/Constants.dart';
import 'package:my_app/drawer_navigation/setting.dart';
import 'package:my_app/drawer_navigation/account.dart';

class DrawerNavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        Constants.ROUTE_ACCOUNT: (BuildContext context) => new AccountPage(),
        Constants.ROUTE_SETTING: (BuildContext context) => new SettingPage()
      },
    );
  }
}
