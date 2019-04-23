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
  BuildContext _context;

  var _circleList = List<FriendCircleItem>();

  Future<void> _refresh() async {
    await Future.delayed(Duration(seconds: 1), () {
      print('朋友圈下拉刷新');
    });
    _circleList.clear();
    _circleList.add(
      FriendCircleItem(
        username: '用户',
        content: '内容',
        images: [
          Image.network(
            'http://lorempixel.com/80/80/',
            fit: BoxFit.cover,
          ),
        ],
        timeStr: '1分钟前',
        from: 'IT之家客户端',
        avatar: Image.network(
          'http://lorempixel.com/35/35/',
          fit: BoxFit.fitHeight,
          height: 35,
        ),
      )
    );

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
  void initState() {
    _refresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _context = context;

    return Material(
      child: RefreshIndicator(
          child: CustomScrollView(
//          physics: const AlwaysScrollableScrollPhysics(),
            slivers: <Widget>[
              _buildAppBar(context),
              SliverList(
                delegate: SliverChildListDelegate(
                  _circleList
                      .map((item) => _buildFriendCircleItem(item))
                      .toList(),
                ),
              ),
            ],
          ),
          onRefresh: _refresh),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      title: Text('朋友圈'),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.camera_alt), onPressed: () {})
      ],
      backgroundColor: Colors.white,
      expandedHeight: 280,
      flexibleSpace: _buildFlexibleSpaceBar(),
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
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          shadows: [
                            Shadow(
                                color: Colors.black,
                                offset: Offset.fromDirection(1, 0.8),
                                blurRadius: 1.0),
                          ],
                        )),
                  ),
                  SimpleDivider(height: 0, width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Image.network('http://lorempixel.com/80/80/'),
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
    var itemChildren = <Widget>[
      Text(
        item.username,
        style: TextStyle(fontSize: 16, color: Colors.blue[900]),
      ),
      Text(item.content),
    ];

    if (item.images.length == 1)
      itemChildren.add(item.images[0]);
    else if (item.images.length == 2)
      itemChildren.add(Row(
        children: <Widget>[item.images[0], item.images[1]],
      ));

    var row = Row(
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
          children: itemChildren,
        ),
      ],
    );

    return row;
  }
}
