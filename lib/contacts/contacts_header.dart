import 'package:flutter/material.dart';
import './contacts_item.dart';

//好友列表头部
class ContactHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ContactItem(titleName:'新的朋友',imageName:'images/icon_addfriend.png'),
      ContactItem(titleName:'群聊',imageName:'images/icon_groupchat.png'),
      ContactItem(titleName:'标签',imageName:'images/icon_menu_tag.png'),
      ContactItem(titleName:'公众号',imageName:'images/icon_menu_public.png'),
    ],);
  }
}