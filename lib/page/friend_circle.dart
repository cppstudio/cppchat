import 'package:flutter/material.dart';
import 'package:cpp_chat/widgets.dart';

class FriendCirclePage extends StatefulWidget {
  @override
  _FriendCirclePageState createState() => _FriendCirclePageState();
}

class _FriendCirclePageState extends State<FriendCirclePage> {
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
            expandedHeight: 240,
            flexibleSpace: _buildFlexibleSpaceBar(),
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
            height: 220,
          ),
          Container(
            padding: EdgeInsets.only(top: 180, left: 25),
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
                  Image.network('http://lorempixel.com/80/80/'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
