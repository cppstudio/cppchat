import 'package:cpp_chat/widgets.dart';
import 'package:flutter/material.dart';

class GridImages extends StatefulWidget {
  final List<Widget> images;

  GridImages({Key key, this.images})
      : assert(images != null),
        super(key: key);

  _GridImagesState createState() => _GridImagesState();
}

class _GridImagesState extends State<GridImages> {
  @override
  Widget build(BuildContext context) {
    var widgetChildren = List<Widget>();

    /// 暴力的强行图片布局
    switch (widget.images.length) {
      case 1:
        widgetChildren.add(widget.images[0]);
        break;
      case 2:
        widgetChildren.add(Row(children: <Widget>[
          widget.images[0],
          SimpleDivider(height: 0, width: 3),
          widget.images[1],
        ]));
        break;
      case 3:
        widgetChildren
          ..add(Row(children: <Widget>[
            widget.images[0],
            SimpleDivider(height: 0, width: 3),
            widget.images[1],
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(children: <Widget>[widget.images[2]]));
        break;
      case 4:
        widgetChildren
          ..add(Row(children: <Widget>[
            widget.images[0],
            SimpleDivider(height: 0, width: 3),
            widget.images[1]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(children: <Widget>[
            widget.images[2],
            SimpleDivider(height: 0, width: 3),
            widget.images[3]
          ]));
        break;
      case 5:
        widgetChildren
          ..add(Row(children: <Widget>[
            widget.images[0],
            SimpleDivider(height: 0, width: 3),
            widget.images[1],
            SimpleDivider(height: 0, width: 3),
            widget.images[2]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(children: <Widget>[
            widget.images[3],
            SimpleDivider(height: 0, width: 3),
            widget.images[4]
          ]));
        break;
      case 6:
        widgetChildren
          ..add(Row(children: <Widget>[
            widget.images[0],
            SimpleDivider(height: 0, width: 3),
            widget.images[1],
            SimpleDivider(height: 0, width: 3),
            widget.images[2]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(children: <Widget>[
            widget.images[3],
            SimpleDivider(height: 0, width: 3),
            widget.images[4],
            SimpleDivider(height: 0, width: 3),
            widget.images[5]
          ]));
        break;
      case 7:
        widgetChildren
          ..add(Row(children: <Widget>[
            widget.images[0],
            SimpleDivider(height: 0, width: 3),
            widget.images[1],
            SimpleDivider(height: 0, width: 3),
            widget.images[2]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(children: <Widget>[
            widget.images[3],
            SimpleDivider(height: 0, width: 3),
            widget.images[4],
            SimpleDivider(height: 0, width: 3),
            widget.images[5]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(
            children: <Widget>[widget.images[6]],
          ));
        break;
      case 8:
        widgetChildren
          ..add(Row(children: <Widget>[
            widget.images[0],
            SimpleDivider(height: 0, width: 3),
            widget.images[1],
            SimpleDivider(height: 0, width: 3),
            widget.images[2]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(children: <Widget>[
            widget.images[3],
            SimpleDivider(height: 0, width: 3),
            widget.images[4],
            SimpleDivider(height: 0, width: 3),
            widget.images[5]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(
            children: <Widget>[widget.images[6], widget.images[7]],
          ));
        break;
      case 9:
        widgetChildren
          ..add(Row(children: <Widget>[
            widget.images[0],
            SimpleDivider(height: 0, width: 3),
            widget.images[1],
            SimpleDivider(height: 0, width: 3),
            widget.images[2]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(children: <Widget>[
            widget.images[3],
            SimpleDivider(height: 0, width: 3),
            widget.images[4],
            SimpleDivider(height: 0, width: 3),
            widget.images[5]
          ]))
          ..add(SimpleDivider(height: 3, width: 0))
          ..add(Row(
            children: <Widget>[
              widget.images[6],
              SimpleDivider(height: 0, width: 3),
              widget.images[7],
              SimpleDivider(height: 0, width: 3),
              widget.images[8]
            ],
          ));
        break;
    }

    return Column(children: widgetChildren);
  }
}
