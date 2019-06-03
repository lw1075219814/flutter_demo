import 'package:flutter/material.dart';

class LoadNetImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('flutter demo'),
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Image.network('https://github.com/nisrulz/flutter-examples/raw/develop/image_from_network/img/flutter_logo.png'),
              new Image.network('https://github.com/nisrulz/flutter-examples/raw/develop/image_from_network/img/loop_anim.gif')
            ],
          ),
        ),
      ),
    );
  }
}
