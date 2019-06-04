import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KeyValuePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new KeyValueState();
  }
}

class KeyValueState extends State<KeyValuePage> {
  final String _key = 'key';

  var _number = 0;

  loadSaveData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      _number = sp.getInt(_key) ?? 0;
    });
  }

  increaseData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      _number = (sp.getInt(_key) ?? 0) - 1;
    });
    sp.setInt(_key, _number);
  }

  reduceData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      _number = (sp.get(_key) ?? 0) + 1;
    });
    sp.setInt(_key, _number);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadSaveData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Key Value'),
        backgroundColor: Colors.blue,
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              '$_number',
              style: new TextStyle(fontSize: 160, color: Colors.red),
            ),
            new RaisedButton(
              onPressed: increaseData,
              padding: EdgeInsets.all(10),
              child: new Text(
                'increase',
                style: new TextStyle(fontSize: 16),
              ),
            ),
            new RaisedButton(
              onPressed: reduceData,
              padding: EdgeInsets.all(10),
              child: new Text(
                'reduce',
                style: new TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
