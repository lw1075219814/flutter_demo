import 'package:flutter/material.dart';
import 'package:my_app/routes/home.dart';
import 'package:my_app/routes/about.dart';
import 'package:my_app/Constants.dart';

class RoutesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        Constants.ROUTE_ABOUT: (BuildContext context) => new AboutPage(),
      },
    );
  }
}
