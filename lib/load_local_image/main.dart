import 'package:flutter/material.dart';

class LoadLocalImgPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Load Local Image'),
        backgroundColor: Colors.red,
      ),
      body: new Container(
        child: new Center(
          child: new Text(
            'hello world',
            style: new TextStyle(color: Colors.blue),
          ),
        ),
        decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage('data_repo/img/bg.png'),
                fit: BoxFit.cover)),
      ),
    );
  }
}
