import 'package:flutter/material.dart';

class CommTitleBar extends StatelessWidget {
  var title = "澳洲用车";
  var rightTxt = "设置";
  var leftTxt = "返回";

  bool leftTxtShow = false;

  bool rightTxtShow = false;

  Function leftBackFun;

  CommTitleBar(
      {Key key,
      this.title,
      this.rightTxt,
      this.leftTxt,
      this.leftTxtShow,
      @required this.leftBackFun})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: ShapeDecoration(
          color: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ))),
      child: new Row(
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.chevron_left), onPressed: this.leftBackFun),
          this.leftTxtShow
              ? new Text(this.leftTxt,
                  style: new TextStyle(color: Colors.white, fontSize: 15.0))
              : null,
          new Text(
            this.title,
            style: new TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          this.rightTxtShow
              ? new Text(this.rightTxt,
                  style: new TextStyle(color: Colors.white, fontSize: 15.0))
              : null,
        ],
      ),
    );
  }

  Widget _showLeft() {
    var content;
    if (this.leftTxtShow) {}
    return content;
  }
}
