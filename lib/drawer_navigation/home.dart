import 'package:flutter/material.dart';
import 'package:my_app/Constants.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  final String title = 'Drawer Navigation Demo';
  final String homeText = 'Home Page';
  final String headerText = 'Header';
  final String aboutText = 'About';
  final String applicationName = 'applicationName';
  final String applicationVersion = 'v1.0.0';
  final String homeItemText = 'Home';
  final String accountItemText = 'Account';
  final String settingsItemText = 'Settings';

  Drawer getNavDrawer(BuildContext context) {
    var _drawerHeader = new DrawerHeader(
        child: new Center(
            child: new Text(headerText, style: new TextStyle(fontSize: 30.0))));

    ListTile getNvaItem(var icon, String text, String routeName) {
      return new ListTile(
        leading: new Icon(icon),
        title: new Text(text),
        onTap: () {
          setState(() {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var _aboutListTile = new AboutListTile(
      child: new Text(aboutText),
      applicationName: applicationName,
      applicationVersion: applicationVersion,
      applicationIcon: new Icon(Icons.adb),
      icon: new Icon(Icons.info),
    );

    var listView = new ListView(children: <Widget>[
      _drawerHeader,
      getNvaItem(Icons.home, homeItemText, Constants.ROUTE_ROOT),
      getNvaItem(Icons.account_box, accountItemText, Constants.ROUTE_ACCOUNT),
      getNvaItem(Icons.settings, settingsItemText, Constants.ROUTE_SETTING),
      _aboutListTile
    ]);

    return new Drawer(child: listView);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
          backgroundColor: Colors.blue,
        ),
        body: new Container(
          child: new Center(
            child: new Text(homeText),
          ),
        ),
        drawer: getNavDrawer(context));
  }
}
