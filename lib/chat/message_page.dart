import 'package:flutter/material.dart';
import './message_data.dart';
import './message_item.dart';

//聊天主页面
class MessagePage extends StatefulWidget{
  @override
  MessagePageState createState() => new MessagePageState();
}
  //渲染某个菜单项 传入菜单标题 图片路径或图标
  _popupMenuItem(String title, {String imagePath, IconData icon}) {
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          //判断是使用图片路径还是图标
          imagePath != null
              ? Image.asset(
                  imagePath,
                  width: 32.0,
                  height: 32.0,
                )
              : SizedBox(
                  width: 32.0,
                  height: 32.0,
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
          //显示菜单项文本内容
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
class MessagePageState extends State<MessagePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 0.0,
        title: Text('微信',style: TextStyle(fontWeight: FontWeight.w600),),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              //跳转至搜索页面
              Navigator.pushNamed(context, 'search');
            },
            child: Icon(
              //搜索图标
              Icons.search,
            ),
          ),
          Padding(
            //左右内边距
            padding: const EdgeInsets.only(left: 30.0, right: 20.0),
            child: GestureDetector(
              onTap: () {
                //弹出菜单
                showMenu(
                  context: context,
                  //定位在界面的右上角
                  position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                  //展示所有菜单项
                  items: <PopupMenuEntry>[
                    _popupMenuItem('发起群聊',
                        imagePath: 'images/icon_menu_group.png'),
                    _popupMenuItem('添加好友',
                        imagePath: 'images/icon_menu_addfriend.png'),
                    _popupMenuItem('扫一扫', 
                        imagePath: 'images/icon_menu_scan.png'),
                     _popupMenuItem('收付款', 
                        imagePath: 'images/icon_menu_scan.png'),
                     _popupMenuItem('帮助与反馈', 
                        imagePath: 'images/icon_menu_help.png'),
                  ],
                );
              },
              //菜单按钮
              child: Icon(Icons.add_circle_outline),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        //传入数据长度
        itemCount: messageData.length,
          //构造列表项
          itemBuilder: (BuildContext context, int index){
            //传入messageData返回列表项
            return new MessageItem(messageData[index]);
          }
      ),
    );
  }
}