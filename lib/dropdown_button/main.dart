import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DropDownButtonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new DropDownButtonState();
}

class DropDownButtonState extends State<DropDownButtonPage> {
  List<String> _words = ['A', 'B', 'C', 'D', 'E'];

  List<DropdownMenuItem<String>> _dropDownMenuItems = new List();

  String _selectedWord;

  @override
  void initState() {
    super.initState();
    _dropDownMenuItems = buildDropDownMenuItems(_words);
    _selectedWord = _dropDownMenuItems[0].value;
  }

  List<DropdownMenuItem<String>> buildDropDownMenuItems(List list) {
    for (String word in list) {
      //必须有value字段，否则setState获取word字段为null
      _dropDownMenuItems
          .add(new DropdownMenuItem(child: new Text(word), value: word));
    }
    return _dropDownMenuItems;
  }

  void changeMenuItem(String word) {
    setState(() {
      _selectedWord = word;
      showToast(_selectedWord);
    });
  }

  void showToast(String word) {
    Fluttertoast.showToast(
        msg: _selectedWord,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Drop Down Menu'),
          backgroundColor: Colors.blue,
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('Please choose a word'),
                new DropdownButton(
                    value: _selectedWord,
                    items: _dropDownMenuItems,
                    onChanged: changeMenuItem)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
