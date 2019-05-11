import 'package:flutter/material.dart';
import 'package:flutter_app/components/list.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new FirstPageState();
  }
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text("界面1"),
      ),
      body: new Container(child: new List()),
    );
  }
}
