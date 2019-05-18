import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class List extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListState();
  }
}

class ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            child: new Container(
              padding: new EdgeInsets.all(5.0),
              child: new ListTile(
                subtitle: new Container(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          new Text(
                            "标题",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          )
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              new Text("时间:"),
                              new Text("2012-12-12 12:12")
                            ],
                          )
                        ],
                      ),
                      new Row(
                        children: <Widget>[
                          new Container(
                            padding:
                                const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 2.0),
                            child: new Text("内容"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                trailing: new Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                ),
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "网络连接错误",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIos: 100,
                      backgroundColor: Color(0xff9E9E9E),
                      textColor: Color(0xffffffff),
                      fontSize: 16
                  );
                },
              ),
            ),
          );
        });
  }
}
