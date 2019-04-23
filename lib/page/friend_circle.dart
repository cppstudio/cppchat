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
    _circleList.add(FriendCircleItem(
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
    ));

    _circleList.add(FriendCircleItem(
      username: '用户',
      content: '内容',
      images: [
        Image.network('http://lorempixel.com/80/80/', fit: BoxFit.cover),
        Image.network('http://lorempixel.com/80/80/', fit: BoxFit.cover),
        Image.network('http://lorempixel.com/80/80/', fit: BoxFit.cover),
        Image.network('http://lorempixel.com/80/80/', fit: BoxFit.cover),
      ],
      timeStr: '1分钟前',
      from: 'IT之家客户端',
      avatar: Image.network(
        'http://lorempixel.com/35/35/',
        fit: BoxFit.fitHeight,
        height: 35,
      ),
    ));

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

                  /// 大头像要加上一点点圆边
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
      /// 用户名
      Text(
        item.username,
        style: TextStyle(fontSize: 15, color: Colors.blue[900]),
      ),

      /// 朋友圈内容
      Container(
        padding: EdgeInsets.only(bottom: 3),
        child: Text(
          item.content,
          style: TextStyle(fontSize: 14),
        ),
      ),
    ];

    /// 暴力的强行图片布局
    switch (item.images.length) {
      case 1:
        itemChildren.add(item.images[0]);
        break;
      case 2:
        itemChildren.add(Row(children: <Widget>[
          item.images[0],
          SimpleDivider(height: 0, width: 3),
          item.images[1],
        ]));
        break;
      case 3:
        itemChildren
          ..add(Row(children: <Widget>[
            item.images[0],
            SimpleDivider(height: 0, width: 3),
            item.images[1],
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(children: <Widget>[item.images[2]]));
        break;
      case 4:
        itemChildren
          ..add(Row(children: <Widget>[
            item.images[0],
            SimpleDivider(height: 0, width: 3),
            item.images[1]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(children: <Widget>[
            item.images[2],
            SimpleDivider(height: 0, width: 3),
            item.images[3]
          ]));
        break;
      case 5:
        itemChildren
          ..add(Row(children: <Widget>[
            item.images[0],
            SimpleDivider(height: 0, width: 3),
            item.images[1],
            SimpleDivider(height: 0, width: 3),
            item.images[2]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(children: <Widget>[
            item.images[3],
            SimpleDivider(height: 0, width: 3),
            item.images[4]
          ]));
        break;
      case 6:
        itemChildren
          ..add(Row(children: <Widget>[
            item.images[0],
            SimpleDivider(height: 0, width: 3),
            item.images[1],
            SimpleDivider(height: 0, width: 3),
            item.images[2]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(children: <Widget>[
            item.images[3],
            SimpleDivider(height: 0, width: 3),
            item.images[4],
            SimpleDivider(height: 0, width: 3),
            item.images[5]
          ]));
        break;
      case 7:
        itemChildren
          ..add(Row(children: <Widget>[
            item.images[0],
            SimpleDivider(height: 0, width: 3),
            item.images[1],
            SimpleDivider(height: 0, width: 3),
            item.images[2]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(children: <Widget>[
            item.images[3],
            SimpleDivider(height: 0, width: 3),
            item.images[4],
            SimpleDivider(height: 0, width: 3),
            item.images[5]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(
            children: <Widget>[item.images[6]],
          ));
        break;
      case 8:
        itemChildren
          ..add(Row(children: <Widget>[
            item.images[0],
            SimpleDivider(height: 0, width: 3),
            item.images[1],
            SimpleDivider(height: 0, width: 3),
            item.images[2]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(children: <Widget>[
            item.images[3],
            SimpleDivider(height: 0, width: 3),
            item.images[4],
            SimpleDivider(height: 0, width: 3),
            item.images[5]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(
            children: <Widget>[item.images[6], item.images[7]],
          ));
        break;
      case 9:
        itemChildren
          ..add(Row(children: <Widget>[
            item.images[0],
            SimpleDivider(height: 0, width: 3),
            item.images[1],
            SimpleDivider(height: 0, width: 3),
            item.images[2]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(children: <Widget>[
            item.images[3],
            SimpleDivider(height: 0, width: 3),
            item.images[4],
            SimpleDivider(height: 0, width: 3),
            item.images[5]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(
            children: <Widget>[
              item.images[6],
              SimpleDivider(height: 0, width: 3),
              item.images[7],
              SimpleDivider(height: 0, width: 3),
              item.images[8]
            ],
          ));
        break;
    }

    /// 发布时间、来源、操作
    itemChildren.add(Row(
      children: <Widget>[
        Text(item.timeStr, style: TextStyle(fontSize: 12)),
        SimpleDivider(height: 0, width: 12),
        // Expanded(child: Text(item.from, style: TextStyle(fontSize: 12))),
        Text(item.from, style: TextStyle(fontSize: 12)),
        FlatButton(child: Icon(Icons.more_horiz), onPressed: () {}),
      ],
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
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: itemChildren,
        ),
      ],
    );

    var column = Column(children: <Widget>[
      row,
      Divider(height: 10),
    ]);

    return column;
  }
}
