import 'package:flutter/material.dart';
import './touch_callback.dart';
import '../find/friend_circle.dart';
//import 'test.dart';

//通用列表项
class ImItem extends StatelessWidget{
  //标题
  final String title;
  //图片路径
  final String imagePath;
  //图标
  final Icon icon;

  ImItem({Key key,@required this.title,this.imagePath,this.icon}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return TouchCallBack(
      onPressed: (){
        //判断点击的项
        switch(title){
          case '朋友圈':
            //路由到朋友圈页面
            print('点击跳转朋友圈');
            Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new FriendCirclePage()),
            );
            //Navigator.pushNamed(context, '/test');
            break;
          case '联系客服':
            break;
        }
      },
      //展示部分
      child: Container(
        height: 50.0,
        child: Row(
          children: <Widget>[
            //图标或图片
            Container(
              child: imagePath != null
                  ? Image.asset(
                imagePath,
                width: 32.0,
                height: 32.0,
              )
                  : SizedBox(
                height: 32.0,
                width: 32.0,
                child: icon,
              ),
              margin: const EdgeInsets.only(left: 22.0,right: 20.0),
            ),
            //标题
            Text(
              title,
              style: TextStyle(fontSize: 16.0,color: Color(0xFF353535)),
            ),
            Expanded(
              child: Text(''),
            ),
            Container(
              child: (
                Image.asset('images/arrow_right.png')
              ),
            )
          ],
        ),
      ),
    );
  }
}