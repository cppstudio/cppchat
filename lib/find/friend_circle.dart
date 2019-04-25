import '../widgets/da/grid_images.dart';
import '../widgets/da/network_image_ex.dart';
import 'package:flutter/material.dart';
import '../widgets.dart';
import '../widgets/da/avatar.dart';

class FriendCirclePage extends StatefulWidget {
  @override
  _FriendCirclePageState createState() => _FriendCirclePageState();
}

class FriendCircleItem {
  String username;
  String content;
  List<String> images;
  String timeStr;
  String from;
  Widget avatar;

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
    _circleList.add(FriendCircleItem(
      username: '用户',
      content: '单张图片',
      images: [
        'http://lorempixel.com/160/200/',
      ],
      timeStr: '1分钟前',
      from: '',
      avatar: CppChatAvatar(
        imageUrl: 'http://lorempixel.com/35/35/',
      ),
    ));

    _circleList.add(FriendCircleItem(
      username: '用户',
      content: '4格图片',
      images: [
        'http://lorempixel.com/80/80/?ida=1',
        'http://lorempixel.com/80/80/?ida=2',
        'http://lorempixel.com/80/80/?ida=3',
        'http://lorempixel.com/80/80/?ida=4',
      ],
      timeStr: '1分钟前',
      from: 'CppChat客户端',
      avatar: CppChatAvatar(
        imageUrl: 'http://lorempixel.com/35/35/',
      ),
    ));

    _circleList.add(FriendCircleItem(
      username: '用户',
      content: '9格图片',
      images: [
        'http://lorempixel.com/80/80/?id=1',
        'http://lorempixel.com/80/80/?id=2',
        'http://lorempixel.com/80/80/?id=3',
        'http://lorempixel.com/80/80/?id=4',
        'http://lorempixel.com/80/80/?id=5',
        'http://lorempixel.com/80/80/?id=6',
        'http://lorempixel.com/80/80/?id=7',
        'http://lorempixel.com/80/80/?id=8',
        'http://lorempixel.com/80/80/?id=9',
      ],
      timeStr: '1分钟前',
      from: 'CppChat客户端',
      avatar: CppChatAvatar(
        imageUrl: 'http://lorempixel.com/35/35/',
      ),
    ));

    for (var i = 0; i < 10; i++) {
      _circleList.add(FriendCircleItem(
        username: '用户$i',
        content: '内容$i',
        images: [
          'http://lorempixel.com/80/80/?id=$i',
          'http://lorempixel.com/80/80/?id=${i}2',
        ],
        timeStr: '$i分钟前',
        from: 'CppChat客户端',
        avatar: CppChatAvatar(
          height: 35,
          imageUrl: 'http://lorempixel.com/35/35/?id=$i',
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
          /// 封面图
          NetworkImageEx(
            assetName: 'images/grey.jpg',
            imageUrl: 'http://lorempixel.com/300/300/',
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
                  /// 头像旁边的用户名
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text('用户名',
                        style: TextStyle(
                          fontSize: 16,
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

                  /// 大头像
                  CppChatAvatar(
                    imageUrl: 'http://lorempixel.com/1500/1500/',
                    width: 80,
                    height: 80,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 构建每一条朋友圈
  Widget _buildFriendCircleItem(FriendCircleItem item) {
    var itemChildren = <Widget>[
      /// 用户名
      Text(
        item.username,
        style: TextStyle(
            fontSize: 15, color: Colors.blue[900], fontWeight: FontWeight.bold),
      ),

      /// 朋友圈文字内容
      Container(
        padding: EdgeInsets.only(bottom: 3),
        child: Text(
          item.content,
          style: TextStyle(fontSize: 14),
        ),
      ),

      GridImages(imagesUrl: item.images),
    ];

    /// 发布时间、来源、操作
    itemChildren.add(Container(
      padding: EdgeInsets.only(right: 8, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(item.timeStr,
              style: TextStyle(fontSize: 12, color: Colors.grey[600])),
          SimpleDivider(height: 0, width: 8),
          Expanded(
              child: Text(item.from,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]))),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Container(
              color: Colors.grey[100],
              child: Icon(Icons.more_horiz),
            ),
          ),
        ],
      ),
    ));

    var row = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        /// 头像
        Container(
          padding: EdgeInsets.fromLTRB(8, 3, 8, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: item.avatar,
          ),
        ),

        /// 朋友圈主体
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: itemChildren,
          ),
        ),
      ],
    );

    var column = Column(
      children: <Widget>[
        row,
        Divider(height: 18),
      ],
    );

    return column;
  }
}
