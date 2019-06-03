import 'package:flutter/material.dart';
import 'package:my_app/gridview/gridview.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Grid View'),
          backgroundColor: Colors.blue,
        ),
        body: new MyGridView(),
      ),
    );
  }
}
