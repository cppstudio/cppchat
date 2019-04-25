import 'package:flutter/material.dart';
import './app.dart';
import './loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import './search.dart';

void main()=>runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: '聊天室',
    //自定义主题
    theme: mDefaultTheme,
    //添加路由
    routes: <String, WidgetBuilder>{
      "app" : (BuildContext context)=>new App(),
      "/friends":(_)=>new WebviewScaffold(
        //webview插件
        url: "https://flutter.io/",
        appBar:new AppBar(
          title: Text('flutter 官网'),
        ),
        withZoom:true,
        withLocalStorage:true,
      ),
      "search":(BuildContext context)=>new Search(),
    },
    home: new LoadingPage(),
  )
);

final ThemeData mDefaultTheme =new ThemeData(
  primaryColor: Color(0xFFF5F5F5),             //前景色   
  scaffoldBackgroundColor: Color(0xFFEDEDED),  //背景颜色（间隔）
  cardColor: Color(0xFF4C4C4C)                 //popmenu颜色           
);
