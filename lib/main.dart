import 'package:flutter/material.dart';
import 'package:my_app/drawer_navigation/main.dart';
import 'package:my_app/Constants.dart';
import 'package:my_app/dropdown_button/main.dart';
import 'package:my_app/gridview/main.dart';
import 'package:my_app/load_local_image/main.dart';
import 'package:my_app/load_local_json/main.dart';
import 'package:my_app/load_net_image/main.dart';
import 'package:my_app/routes/main.dart';
import 'package:my_app/widget/main.dart';
import 'package:my_app/main_list.dart';
import 'package:my_app/key_value/main.dart';
import 'package:my_app/http_request/main.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter Demo'),
          backgroundColor: Colors.blue,
        ),
        body: new MainListPage(),
      ),
      routes: <String, WidgetBuilder>{
        //
        Constants.ROUTE_DRAWER_NAVIGATION: (BuildContext context) =>
            new DrawerNavPage(),
        //
        Constants.ROUTE_DROPDOWN_BUTTON: (BuildContext context) =>
            new DropDownButtonPage(),
        //
        Constants.ROUTE_GRIDVIEW: (BuildContext context) => new GridViewPage(),
        //
        Constants.ROUTE_LOAD_LOCAL_IMAGE: (BuildContext context) =>
            new LoadLocalImgPage(),
        //
        Constants.ROUTE_LOAD_LOCAL_JSON: (BuildContext context) =>
            new LoadLocalJsonPage(),
        //
        Constants.ROUTE_LOAD_NET_IMAGE: (BuildContext context) =>
            new LoadNetImagePage(),
        //
        Constants.ROUTE: (BuildContext context) => new RoutesPage(),
        //
        Constants.ROUTE_WIDGET: (BuildContext context) => new WidgetPage(),
        //
        Constants.ROUTE_KEY_VALUE: (BuildContext context) => new KeyValuePage(),
        //
        Constants.ROUTE_HTTP_REQUEST: (BuildContext context) =>
            new HttpRequestPage(),
      },
    );
  }
}
