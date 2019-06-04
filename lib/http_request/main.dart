import 'package:flutter/material.dart';
import 'package:my_app/http_request/bean.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpRequestPage extends StatelessWidget {
  final String _url = 'https://jsonplaceholder.typicode.com/posts/1';

  Future<RemoteBean> data;

  HttpRequestPage() {
    data = requestData();
  }

  Future<RemoteBean> requestData() async {
    final response = await http.get(_url);
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonStr = json.decode(response.body);
      return new RemoteBean(
          jsonStr['userId'], jsonStr['id'], jsonStr['title'], jsonStr['body']);
    } else {
      throw new Exception('failed to request data');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Http_Request'),
        backgroundColor: Colors.blue,
      ),
      body: new Center(
        child: FutureBuilder<RemoteBean>(
          future: data,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
//                  new Text(
//                    '$snapshot.data.userId',
//                    style: new TextStyle(fontSize: 16),
//                  ),
//                  new Text(
//                    '$snapshot.data.id',
//                    style: new TextStyle(fontSize: 16),
//                  ),
                  new Text(
                    snapshot.data.title,
                    style: new TextStyle(fontSize: 16),
                  ),
                  new Text(
                    snapshot.data.body,
                    style: new TextStyle(fontSize: 16),
                  )
                ],
              );
            } else if (snapshot.hasError) {
              return new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'Exception:\n',
                    style: new TextStyle(fontSize: 30, color: Colors.red),
                  ),
                  new Text(
                    snapshot.error,
                    style: new TextStyle(fontSize: 16, color: Colors.red),
                  )
                ],
              );
            }
            //default, show a loading spinner
            return new CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
