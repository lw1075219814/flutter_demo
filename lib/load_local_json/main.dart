import 'package:flutter/material.dart';
import 'dart:convert';

class LoadLocalJsonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        home: new Scaffold(
      appBar: new AppBar(
        title: new Text('Load Local Json'),
        backgroundColor: Colors.blue,
      ),
      body: new MyListView(),
    ));
  }
}

class MyListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ListViewState();
}

class ListViewState extends State<MyListView> {
  final TextStyle _textStyle = new TextStyle(fontSize: 14);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Center(
        child: new FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('data_repo/json/data.json'),
            builder: (context, snapshot) {
              var _result = json.decode(snapshot.data.toString());
              return new ListView.builder(
                itemCount: _result == null ? 0 : _result.length,
                itemBuilder: (BuildContext context, int index) {
                  var _data = _result[index];
                  return new Card(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('Name:' + _data['name'], style: _textStyle),
                        new Text(
                          'Height' + _data['height'],
                          style: _textStyle,
                        ),
                        new Text(
                          'Mass' + _data['mass'],
                          style: _textStyle,
                        ),
                        new Text(
                          'Hair_color' + _data['hair_color'],
                          style: _textStyle,
                        ),
                        new Text(
                          'Skin_color' + _data['skin_color'],
                          style: _textStyle,
                        ),
                        new Text(
                          'Eye_color' + _data['eye_color'],
                          style: _textStyle,
                        ),
                        new Text(
                          'Birth_year' + _data['birth_year'],
                          style: _textStyle,
                        ),
                        new Text(
                          'Gender' + _data['gender'],
                          style: _textStyle,
                        )
                      ],
                    ),
                  );
                },
              );
            }),
      ),
    );
  }
}
