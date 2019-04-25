import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'page/friend_circle.dart';
import 'routes.dart';
import 'config.dart';

void main() {
  runApp(MyApp());

  // Platform 是在io包里面的
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: GlobalConfig.title,
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      showSemanticsDebugger: false,
      theme: ThemeData(
//        accentColor: Colors.white,
//        backgroundColor: Colors.white,
//        bottomAppBarColor: Colors.white,
//        buttonColor: Colors.green,
//        cardColor: Colors.white,
//        dialogBackgroundColor: Colors.white,
//        highlightColor: Colors.grey,
        primaryColor: Colors.white,
//        scaffoldBackgroundColor: Colors.white,
        //  primarySwatch: Colors.blue,
      ),
      home: HomePage(title: GlobalConfig.title),
      routes: {
        UIRoute.friend_circle: (ctx) => FriendCirclePage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;

  HomePage({this.title});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
              child: Text('点击进入朋友圈'),
              onPressed: () {
                Navigator.pushNamed(context, UIRoute.friend_circle);
              }),
        ],
      ),
    );
  }
}
