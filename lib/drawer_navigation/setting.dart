import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Setting Page'),
          backgroundColor: Colors.blue,
        ),
        body: new Container(
          child: new Center(child: new Text('Setting Page')),
        ),
    );
  }
}
