import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/ApiContents.dart';
import 'package:flutter_app/HttpUtil.dart';
import 'package:flutter_app/model/OrderNumModel.dart';

import 'dart:convert';

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomePageState();
  }
}

class HomePageState extends State<Homepage> with WidgetsBindingObserver {
  OrderNumModel orderNumModel;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
    if (Platform.isAndroid) {
// 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
      SystemUiOverlayStyle systemUiOverlayStyle =
          SystemUiOverlayStyle(statusBarColor: Colors.lightBlueAccent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
    _getNumber();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  /* API获取订单数量显示 */
  _getNumber() async {
    Map<String, String> map = new Map();
    map['user_id'] = '1346';
    HttpUtil.get(ApiContents.ORDER_NUM, (data) {
      Map result = json.decode(data);
      setState(() {
        orderNumModel = new OrderNumModel.fromJson(result);
      });
    }, params: map);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
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
                    height: 300.0,
                    padding: EdgeInsets.only(top: 50.0),
                    color: Colors.lightBlueAccent,
                    child: new Column(
                      children: <Widget>[
                        new Image.asset(
                          "./images/yongche.png",
                          height: 50.0,
                        ),
                        new Container(
                          margin: EdgeInsets.only(
                              left: 10.0, top: 20.0, right: 10.0),
                          child: new Card(
                              elevation: 10.0,
                              child: new Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                height: 160.0,
                                width: MediaQuery.of(context).size.width,
                                child: new Column(
                                  children: <Widget>[
                                    new Container(
                                      height: 70.0,
                                      child: new FlatButton(
                                          onPressed: () {
                                            print('用户点击');
                                          },
                                          child: new Stack(
                                            children: <Widget>[
                                              new Align(
                                                alignment: Alignment.centerLeft,
                                                child: new Text(
                                                  "用户名aa",
                                                  style: new TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16.0),
                                                ),
                                              ),
                                              new Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: new Icon(
                                                    Icons.chevron_right),
                                              )
                                            ],
                                          )),
                                    ),
                                    new Divider(),
                                    new Container(
                                      padding:
                                          EdgeInsets.only(left: 15, top: 10),
                                      height: 70.0,
                                      child: new Row(
                                        children: <Widget>[
                                          new Flexible(
                                              flex: 1,
                                              child: new Column(
                                                children: <Widget>[
                                                  new Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: new Text(
                                                      "当前账户余额",
                                                      style: new TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14.0),
                                                    ),
                                                  ),
                                                  new Padding(
                                                    padding:
                                                        EdgeInsets.only(top: 5),
                                                    child: new Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: new Text(
                                                        "\$ 0",
                                                        style: new TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 20.0),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )),
                                          new Flexible(
                                              flex: 1,
                                              child: new Column(
                                                children: <Widget>[
                                                  new Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: new Text(
                                                      "当前账户状态",
                                                      style: new TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14.0),
                                                    ),
                                                  ),
                                                  new Padding(
                                                    padding:
                                                        EdgeInsets.only(top: 5),
                                                    child: new Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: new Text(
                                                        "普通用户",
                                                        style: new TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 26.0),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        )
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
                              ),
                              new Container(
                                width: MediaQuery.of(context).size.width / 7,
                              )
                            ],
                          )),
                    ],
                  )),
                  new Container(
                      child: new Column(
                    children: <Widget>[
                      new Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: new Text(
                          "我·的·订·单",
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
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new Column(
                                children: <Widget>[
                                  new Image.asset(
                                    "./images/user_option_pending_offer.png",
                                    height: 30.0,
                                  ),
                                  new Text(
                                    "待报价",
                                    style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              ),
                              new Stack(
                                children: <Widget>[
                                  new Column(
                                    children: <Widget>[
                                      new Image.asset(
                                        "./images/user_option_pending_pay.png",
                                        height: 30.0,
                                      ),
                                      new Text(
                                        "待支付",
                                        style: new TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.normal),
                                      )
                                    ],
                                  ),
                                  new Positioned(
                                    right: 0,
                                    top: 0,
                                    child: new CircleAvatar(
                                      backgroundColor: Colors.red,
                                      radius: 10,
                                      child: new SizedBox(
                                        child: new Text(
                                          orderNumModel != null
                                              ? orderNumModel.data != null
                                                  ? orderNumModel.data
                                                      .number_of_unpaid_orders
                                                  : '0'
                                              : '0',
                                          style: new TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              new Stack(
                                children: <Widget>[
                                  new Column(
                                    children: <Widget>[
                                      new Image.asset(
                                        "./images/user_option_pending_execution.png",
                                        height: 30.0,
                                      ),
                                      new Text(
                                        "待执行",
                                        style: new TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.normal),
                                      )
                                    ],
                                  ),
                                  new Positioned(
                                    right: 0,
                                    top: 0,
                                    child: new CircleAvatar(
                                      backgroundColor: Colors.red,
                                      radius: 10,
                                      child: new SizedBox(
                                        child: new Text(
                                          orderNumModel != null
                                              ? orderNumModel.data != null
                                                  ? orderNumModel.data
                                                      .number_of_unexecuted_orders
                                                  : '0'
                                              : '0',
                                          style: new TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              new Column(
                                children: <Widget>[
                                  new Image.asset(
                                    "./images/user_option_completed.png",
                                    height: 30.0,
                                  ),
                                  new Text(
                                    "已完成",
                                    style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              ),
                            ],
                          )),
                    ],
                  ))
                ],
              )),
              new Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 30.0),
                padding: EdgeInsets.all(15.0),
                color: Colors.white,
                child: new Text(
                  "若您在预约下单中遇到问题，建议添加客服微信为您解答，客服微信帐号： auyongche\n\n"
                      "或可拨打客服电话：\n\n"
                      "·手机：+61 478 586 816\n"
                      "·固话：+61 283 107 666\n\n"
                      "关于澳洲用车\n\n"
                      "·AUSTRALIA PRIVATE TRAVEL GROUP\n"
                      "·NSW Point to Point Transport Authorisation: BSP-410946\n",
                  style: new TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal),
                ),
              )
            ],
          )),
    );
  }
}
