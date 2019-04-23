import 'package:flutter/material.dart';
import 'network_image_ex.dart';

/// 用户头像组件
class CppChatAvatar extends StatefulWidget {
  final String imageUrl;

  CppChatAvatar({Key key, this.imageUrl}) : super(key: key);

  _CppChatAvatarState createState() => _CppChatAvatarState();
}

class _CppChatAvatarState extends State<CppChatAvatar> {
  @override
  Widget build(BuildContext context) {
    /// 头像要加上一点点圆边
    /// 缓存 & 占位符加载图片
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: NetworkImageEx(
        assetImage: 'images/avatar.jpg',
        indicator: true,
        imageUrl: widget.imageUrl,
      ),
    );
  }
}
