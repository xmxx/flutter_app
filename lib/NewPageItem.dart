import 'package:flutter/material.dart';
import 'package:flutter_app/GenderChooseDialog.dart';

class NewPageItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Card(
        child: new FlatButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return new GenderChooseDialog();
                  });
//              showModalBottomSheet(
////            showBottomSheet(
//                  context: context,
//                  builder: (BuildContext context) {
//                    return new Container(
//                        height: 250.0,
//                        child: new Padding(
//                            padding: const EdgeInsets.all(10.0),
//                            child: new Column(
//                              children: <Widget>[
//                                new ListTile(
//                                  leading: new Icon(Icons.chat),
//                                  title: new Text("开始会话"),
//                                ),
//                                new ListTile(
//                                  leading: new Icon(Icons.help),
//                                  title: new Text("操作说明"),
//                                ),
//                                new ListTile(
//                                  leading: new Icon(Icons.settings),
//                                  title: new Text("系统设置"),
//                                ),
//                                new ListTile(
//                                  leading: new Icon(Icons.more),
//                                  title: new Text("更多设置"),
//                                ),
//                              ],
//                            )));
//                  });
            },
            child: new Padding(
              padding: new EdgeInsets.only(
                  left: 0.0, top: 10.0, right: 10.0, bottom: 0.0),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Container(
                    child: new Text(
                      "描述",
                      style: new TextStyle(
                          color: Colors.amberAccent, fontSize: 14.0),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                    alignment: Alignment.topLeft,
                  ),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _getBottomItem(Icons.star, "110"),
                      _getBottomItem(Icons.link, "120"),
                      _getBottomItem(Icons.subject, "130"),
                    ],
                  ),
                ],
              ),
            )),
      ),
      height: 120.0,
    );
  }

  Widget _getBottomItem(IconData icon, String text) {
    ///充满 Row 横向的布局
    return new Expanded(
      flex: 1,

      ///居中显示
      child: new Center(
        ///横向布局
        child: new Row(
          ///主轴居中,即是横向居中
          mainAxisAlignment: MainAxisAlignment.center,

          ///大小按照最大充满
          mainAxisSize: MainAxisSize.max,

          ///竖向也居中
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ///一个图标，大小16.0，灰色
            new Icon(
              icon,
              size: 16.0,
              color: Colors.grey,
            ),

            ///间隔
            new Padding(padding: new EdgeInsets.only(left: 5.0)),

            ///显示文本
            new Text(
              text,
              //设置字体样式：颜色灰色，字体大小14.0
              style: new TextStyle(color: Colors.grey, fontSize: 14.0),
              //超过的省略为...显示
              overflow: TextOverflow.ellipsis,
              //最长一行
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
