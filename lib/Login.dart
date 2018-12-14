import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  createState() => new LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('澳洲用车登录'),
          centerTitle: true,
        ),
        body: new Container(
          alignment: Alignment.center,
          child: new Container(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            margin: EdgeInsets.only(left: 40.0, right: 40.0),
            child: new RaisedButton(
              color: Colors.green,
              elevation: 1.0,
              onPressed: _btnClick,
              padding: new EdgeInsets.all(10.0),
              child: new Text(
                "微信登录",
                style: new TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
          ),
        ));
  }

  void _btnClick() {
    print("Button按钮");
  }
}
