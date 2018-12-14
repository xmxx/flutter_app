import 'package:flutter/material.dart';
import 'package:flutter_app/Homepage.dart';
import 'package:flutter_app/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  ///是否登录
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => new Login(),
        '/home': (BuildContext context) => new Homepage(),
      },
      theme: new ThemeData(
        primaryColor: Colors.black,
      ),
      home: this.isLogin ? new Homepage() : new Login(),
    );
  }
}
