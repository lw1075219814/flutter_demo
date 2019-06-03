import 'package:flutter/material.dart';
import 'package:my_app/Constants.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('About Page'),
        backgroundColor: Colors.blue,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('About Page',
                  style: new TextStyle(fontSize: 20),
                  textAlign: TextAlign.center),
              new IconButton(
                  icon: new Icon(Icons.home, color: Colors.red),
                  onPressed: () {
                    Navigator.of(context).pushNamed(Constants.ROUTE_ROOT);
                  },
                  iconSize: 80),
            ],
          ),
        ),
      ),
    );
  }
}
