import 'dart:io';
import 'package:flutter/material.dart';
<<<<<<< HEAD
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
=======
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
>>>>>>> develop-da
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
