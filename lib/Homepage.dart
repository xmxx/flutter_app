import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomePageState();
  }
}

class HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // ignore: argument_type_not_assignable
        color: Color.fromARGB(
          250,
          250,
          250,
          250,
        ),
        child: new ListView(
          children: <Widget>[
            new Container(
                child: new Column(
              children: <Widget>[
                new Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250.0,
                  padding: EdgeInsets.only(top: 50.0),
                  color: Colors.lightBlueAccent,
                  child: new Column(
                    children: <Widget>[
                      new Image.asset(
                        "./images/yongche.png",
                        height: 50.0,
                      ),
                      new Container(
                        margin:
                            EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
                        child: new Card(
                            child: new Container(
                          height: 110.0,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: new Column(
                            children: <Widget>[
                              new FlatButton(
                                  onPressed: () {
                                    print("ddddddddddd");
                                  },
                                  child: new Stack(
                                    children: <Widget>[
                                      new Align(
                                        alignment: Alignment.topLeft,
                                        child: new Text(
                                          "用户名aa",
                                          style: new TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0),
                                        ),
                                      ),
                                      new Align(
                                        alignment: Alignment.topRight,
                                        child: new Icon(Icons.chevron_right),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                new Container(
                    child: new Column(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: new Text(
                        "我·要·预·定",
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    new Container(
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 10.0),
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Column(
                              children: <Widget>[
                                new Image.asset(
                                  "./images/order_option_transfer.png",
                                  height: 40.0,
                                ),
                                new Text(
                                  "机场接送机",
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            new Column(
                              children: <Widget>[
                                new Image.asset(
                                  "./images/order_option_car.png",
                                  height: 40.0,
                                ),
                                new Text(
                                  "旅游用车",
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            new Column(
                              children: <Widget>[
                                new Image.asset(
                                  "./images/order_option_other.png",
                                  height: 40.0,
                                ),
                                new Text(
                                  "其他包车",
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            )
                          ],
                        )),
                  ],
                ))
              ],
            ))
          ],
        ));
  }
}
