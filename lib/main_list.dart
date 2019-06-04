import 'package:flutter/material.dart';
import 'package:my_app/Constants.dart';

class MainListPage extends StatelessWidget {
  final List<String> _buttonTexts = [
    'drawer_navigation',
    'dropdown_button',
    'gridview',
    'load_local_image',
    'load_local_json',
    'load_net_image',
    'routes',
    'widget',
    'key_value',
    'http_request'
  ];

  //测滑
  static const int _DRAWER_NAVIGATION = 0;

  //下拉框
  static const int _DROPDOWN_BUTTON = 1;

  //gridview
  static const int _GRIDVIEW = 2;

  //加载本地图片
  static const int _LOAD_LOCAL_IMAGE = 3;

  //加载本地json
  static const int _LOAD_LOCAL_JSON = 4;

  //加载网络图片
  static const int _LOAD_NET_IMAGE = 5;

  //页面跳转
  static const int _ROUTES = 6;

  //自定义组件
  static const int _WIDGET = 7;

  //键值对
  static const int _KEY_VALUE = 8;

  //http request
  static const int _KEY_HTTP_REQUEST = 9;

  void onItemClick(BuildContext context, int position) {
    switch (position) {
      case _DRAWER_NAVIGATION:
        Navigator.of(context).pushNamed(
          Constants.ROUTE_DRAWER_NAVIGATION,
        );
        break;
      case _DROPDOWN_BUTTON:
        Navigator.of(context).pushNamed(Constants.ROUTE_DROPDOWN_BUTTON);
        break;
      case _GRIDVIEW:
        Navigator.of(context).pushNamed(Constants.ROUTE_GRIDVIEW);
        break;
      case _LOAD_LOCAL_IMAGE:
        Navigator.of(context).pushNamed(Constants.ROUTE_LOAD_LOCAL_IMAGE);
        break;
      case _LOAD_LOCAL_JSON:
        Navigator.of(context).pushNamed(Constants.ROUTE_LOAD_LOCAL_JSON);
        break;
      case _LOAD_NET_IMAGE:
        Navigator.of(context).pushNamed(Constants.ROUTE_LOAD_NET_IMAGE);
        break;
      case _ROUTES:
        Navigator.of(context).pushNamed(Constants.ROUTE);
        break;
      case _WIDGET:
        Navigator.of(context).pushNamed(Constants.ROUTE_WIDGET);
        break;
      case _KEY_VALUE:
        Navigator.of(context).pushNamed(Constants.ROUTE_KEY_VALUE);
        break;
      case _KEY_HTTP_REQUEST:
        Navigator.of(context).pushNamed(Constants.ROUTE_HTTP_REQUEST);
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
        itemCount: _buttonTexts.length == 0 ? 0 : _buttonTexts.length,
        itemBuilder: (BuildContext conext, int position) {
          var buttonText = _buttonTexts[position];
          return new MaterialButton(
            onPressed: () {
              onItemClick(context, position);
            },
            shape: new RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            textColor: Colors.red,
            padding: EdgeInsets.all(10.0),
            child: new Center(
              child: new Text(
                buttonText,
                style: new TextStyle(fontSize: 16),
              ),
            ),
          );
        });
  }
}
