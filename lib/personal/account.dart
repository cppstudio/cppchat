import 'package:flutter/material.dart';
import '../common/im_item.dart';

void main() => runApp(new Account());

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('个人信息'),
        elevation: 0.0,
      ),
      body: new Column(
        children: <Widget>[
          //列表的实现（代码冗余，后期封装）
          Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                top: 8.0,
                left: 15.0,
                bottom: 8.0,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      '头像',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                  Expanded(
                    child: Text(''),
                  ),
                  Image.asset(
                    'images/yixiu.jpeg',
                    width: 60,
                    height: 60,
                  ),
                  Image.asset('images/arrow_right.png'),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Divider(
              height: 0.5,
              color: Color(0xFFd9d9d9),
            ),
          ),
          Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                top: 8.0,
                left: 15.0,
                bottom: 8.0,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      '昵称',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                  Expanded(
                    child: Text(''),
                  ),
                  Text('mistletoe'),
                  Image.asset('images/arrow_right.png'),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Divider(
              height: 0.5,
              color: Color(0xFFd9d9d9),
            ),
          ),
          Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                top: 8.0,
                left: 15.0,
                bottom: 8.0,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      '微信号',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                  Expanded(
                    child: Text(''),
                  ),
                  Text('gf6445'),
                  Image.asset('images/arrow_right.png'),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Divider(
              height: 0.5,
              color: Color(0xFFd9d9d9),
            ),
          ),
          Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                top: 8.0,
                left: 15.0,
                bottom: 8.0,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      '二维码名片',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                  Expanded(
                    child: Text(''),
                  ),
                  Image.asset('images/QRcode.png',width: 15.0,),
                  Image.asset('images/arrow_right.png'),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Divider(
              height: 0.5,
              color: Color(0xFFd9d9d9),
            ),
          ),
          Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                top: 8.0,
                left: 15.0,
                bottom: 8.0,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      '更多',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                  Expanded(
                    child: Text(''),
                  ),
                  Text('mistletoe'),
                  Image.asset('images/arrow_right.png'),
                ],
              )),
          Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(
                top: 8.0,
                left: 15.0,
                bottom: 8.0,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      '我的地址',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                  Expanded(
                    child: Text(''),
                  ),
                  Image.asset('images/arrow_right.png'),
                ],
              )),
        ],
      ),
    );
  }
}
