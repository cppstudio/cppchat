import 'package:flutter/material.dart';
import 'package:cpp_chat/widgets.dart';

class FriendCirclePage extends StatefulWidget {
  @override
  _FriendCirclePageState createState() => _FriendCirclePageState();
}

class FriendCircleItem {
  String username;
  String content;
  List<Image> images;
  String timeStr;
  String from;
  Image avatar;

  FriendCircleItem(
      {this.username,
      this.content,
      this.images,
      this.timeStr,
      this.from,
      this.avatar});
}

class _FriendCirclePageState extends State<FriendCirclePage> {
  var _circleList = List<FriendCircleItem>();

  Future<void> _refresh() async {
    await Future.delayed(Duration(seconds: 1), () {
      print('朋友圈下拉刷新');
    });
    _circleList.clear();
    for (var i = 0; i < 10; i++) {
      _circleList.add(FriendCircleItem(
        username: '用户$i',
        content: '内容$i',
        images: [
          Image.network(
            'http://lorempixel.com/80/80/?id=$i',
            fit: BoxFit.fitHeight,
            height: 80,
          ),
          Image.network(
            'http://lorempixel.com/80/80/?id=${i}2',
            fit: BoxFit.fitHeight,
            height: 80,
          ),
        ],
        timeStr: '$i分钟前',
        from: 'IT之家客户端',
        avatar: Image.network(
          'http://lorempixel.com/35/35/?id=$i',
          fit: BoxFit.fitHeight,
          height: 35,
        ),
      ));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: <Widget>[
              IconButton(icon: Icon(Icons.photo_camera), onPressed: () {})
            ],
            backgroundColor: Colors.white,
            expandedHeight: 280,
            flexibleSpace: _buildFlexibleSpaceBar(),
          ),
          SliverFillRemaining(
            child: RefreshIndicator(
              child: ListView(
                children: _circleList
                    .map((item) => _buildFriendCircleItem(item))
                    .toList(),
              ),
              onRefresh: _refresh,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFlexibleSpaceBar() {
    return FlexibleSpaceBar(
      background: Stack(
        children: <Widget>[
          Image.network(
            'http://lorempixel.com/300/300/',
            fit: BoxFit.fill,
            width: double.infinity,
            height: 260,
          ),
          Container(
            padding: EdgeInsets.only(top: 215, left: 25),
            child: Container(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text('用户名',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                  SimpleDivider(height: 0, width: 10),
                  Material(
                    child: Image.network('http://lorempixel.com/80/80/'),
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFriendCircleItem(FriendCircleItem item) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: item.avatar,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              item.username,
              style: TextStyle(fontSize: 16, color: Colors.blue[900]),
            ),
            Text(item.content),
            Row(
              children: <Widget>[
                item.images[0],
                item.images[1],
              ],
            )
          ],
        ),
      ],
    );
  }
}
