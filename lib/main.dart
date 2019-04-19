import 'package:flutter/material.dart';
import 'page/friend_circle.dart';
import 'routes.dart';
import 'config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: GlobalConfig.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
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
