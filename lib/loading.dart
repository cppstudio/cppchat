import 'package:flutter/material.dart';

import 'dart:async';

class LoadingPage extends StatefulWidget{
  @override
  _LoadingState createState() => new _LoadingState();
}

class _LoadingState extends State<LoadingPage>{
  @override
  void initState() { 
    super.initState();
    //加载的时候停顿3秒
    new Future.delayed(Duration(seconds: 3),(){
      print('Flutter 即时通讯APP界面实现...');
      Navigator.of(context).pushReplacementNamed('app');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Image.asset('images/launch.jpg',fit:BoxFit.cover,),
        ],
      ),
    );
  }
}