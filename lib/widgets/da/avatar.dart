import 'package:flutter/material.dart';
import 'network_image_ex.dart';

/// 用户头像组件
class CppChatAvatar extends StatefulWidget {
  final String imageUrl;
  final double width;
  final double height;
  final BoxFit fit;

  CppChatAvatar(
      {Key key,
      this.imageUrl,
      this.width: 40,
      this.height: 40,
      this.fit: BoxFit.fitHeight})
      : assert(imageUrl != null),
        super(key: key);

  _CppChatAvatarState createState() => _CppChatAvatarState();
}

class _CppChatAvatarState extends State<CppChatAvatar> {
  @override
  Widget build(BuildContext context) {
    /// 头像要加上一点点圆边
    /// 缓存 & 占位符加载图片
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: NetworkImageEx(
        assetName: 'images/avatar.jpg',
        indicator: true,
        imageUrl: widget.imageUrl,
        width: widget.width,
        height: widget.height,
        fit: widget.fit,
      ),
    );
  }
}
