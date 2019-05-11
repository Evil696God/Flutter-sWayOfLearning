// This sample shows adding an action to an [AppBar] that opens a shopping cart.

import 'package:flutter/material.dart';
import 'package:flutter_app/view/FirstPage.dart';
import 'package:flutter_app/view/SecondPage.dart';
import 'package:flutter_app/view/ThirdPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sample for material.AppBar.actions',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // ...
            },
          ),
        ],
      ),
      body: new Center(
        child: new Text("这是第一个界面"),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: null),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new TabBarView(
          controller: tabController,
          children: <Widget>[
            new FirstPage(),
            new SecondPage(),
            new ThirdPage()
          ]
      ),

      bottomNavigationBar: new Material(
        color: Colors.orangeAccent,
        child: new TabBar(
            controller: tabController,
            tabs: <Tab>[
              new Tab(
                text: "列表",
                icon: new Icon(Icons.home),
              ),
              new Tab(
                text: "通知",
                icon: new Icon(Icons.message),
              ),
              new Tab(
                  text: "我的",
                  icon: new Icon(Icons.cloud)
              )
            ]
        ),
      ),
    );
  }
}
