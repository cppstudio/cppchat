import 'package:flutter/material.dart';
import '../common/touch_callback.dart';
import '../common/im_item.dart';
import 'account.dart';

//我的页面
class Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(''),
        backgroundColor: Colors.white,//AppBar的背景颜色
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_camera,color: Colors.black,),
          )
        ],
      ),
      //列表
      body: ListView(
        children: <Widget>[
          //头像部分实现
          Container(
            color: Colors.white,
            height: 100.0,
            child: TouchCallBack(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //添加头像
                  Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                    child: Image.asset(
                      'images/yixiu.jpeg',
                      width: 80.0,
                      height: 60.0,
                    ),
                  ),
                  //用户名及帐号显示
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '千万别急',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF353535),
                          ),
                        ),
                        Text(
                          '帐号 bieji',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xFFa9a9a9),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //二维码图片显示
                  Container(
                      margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'images/code.png',
                            width: 18.0,
                            height: 18.0,
                          ),
                          Image.asset('images/arrow_right.png')
                        ],
                      )),
                ],
              ),
              onPressed: () {
                Navigator.push(context,new MaterialPageRoute(builder: (context) => new Account()),
            );
              },
            ),
          ),
          //列表项 使用ImItem渲染
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            color: Colors.white,
            child: ImItem(
              title: '支付',
              imagePath: 'images/icon_pay.png',
              icon: Icon(Icons.add_circle),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                  imagePath: 'images/icon_collect.png',
                  title: '收藏',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                ImItem(
                  imagePath: 'images/icon_ablumn.png',
                  title: '相册',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                ImItem(
                  imagePath: 'images/icon_package.png',
                  title: '卡包',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.1,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                ImItem(
                  imagePath: 'images/icon_emoji.png',
                  title: '表情',
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            color: Colors.white,
            child: ImItem(
              title: '设置',
              imagePath: 'images/icon_setting.png',
            ),
          ),
        ],
      ),
    );
  }
}
