import 'package:flutter/material.dart';
//import '../common/touch_callback.dart';
import '../common/im_item.dart';
import './friend_circle.dart';

//我的页面
class Find extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //列表
      appBar: AppBar(
        elevation: 0.0,
        title: Text('发现'),
      ),
      body: ListView(
        children: <Widget>[
          //列表项 使用ImItem渲染
          Container(
               color: Colors.white,
              // child: RaisedButton(
              //   color: Colors.white,
              //   elevation: 0.0,
              //   child: ImItem(
              //     title: '朋友圈',
              //     imagePath: 'images/icon_me_friends.png',
              //   ),
              //   onPressed: () {
              //     print('object');
              //     Navigator.push(
              //       context,
              //       new MaterialPageRoute(
              //           builder: (context) => new FriendCirclePage()),
              //     );
              //   },
              // )
              child: ImItem(
                      title: '朋友圈',
                      imagePath: 'images/friendCircle.png',
                    ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                  imagePath: 'images/icon_scan.png',
                  title: '扫一扫',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                ImItem(
                  imagePath: 'images/icon_wave.png',
                  title: '摇一摇',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                  imagePath: 'images/icon_look.png',
                  title: '看一看',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                ImItem(
                  imagePath: 'images/icon_search.png',
                  title: '搜一搜',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                  imagePath: 'images/icon_near.png',
                  title: '附近的人',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                ImItem(
                  imagePath: 'images/icon_float.png',
                  title: '漂流瓶',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                  imagePath: 'images/icon_shopping.png',
                  title: '购物',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                ImItem(
                  imagePath: 'images/icon_game.png',
                  title: '游戏',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0, bottom: 20.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                  imagePath: 'images/icon_miniapp.png',
                  title: '小程序',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
