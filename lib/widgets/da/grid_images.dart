import '../../widgets.dart';
import 'package:flutter/material.dart';
import '../../widgets/da/network_image_ex.dart';

class GridImages extends StatefulWidget {
  final List<String> imagesUrl;
  final double spacing = 3;

  GridImages({Key key, this.imagesUrl})
      : assert(imagesUrl != null),
        super(key: key);

  _GridImagesState createState() => _GridImagesState();
}

class _GridImagesState extends State<GridImages> {
  Widget _buildGridImage(String imageUrl) {
    return NetworkImageEx(
      width: 90,
      height: 90,
      fit: BoxFit.fitHeight,
      imageUrl: imageUrl,
      assetName: 'images/grey.jpg',
    );
  }

  @override
  Widget build(BuildContext context) {
    var widgetChildren = List<Widget>();

    /// 暴力的强行图片布局
    switch (widget.imagesUrl.length) {
      case 1:
        widgetChildren.add(NetworkImageEx(
          width: 160,
          fit: BoxFit.fitWidth,
          assetName: 'images/grey.jpg',
          imageUrl: widget.imagesUrl[0],
        ));
        break;
      case 2:
        widgetChildren.add(Row(children: <Widget>[
          _buildGridImage(widget.imagesUrl[0]),
          SimpleDivider(height: 0, width: widget.spacing),
          _buildGridImage(widget.imagesUrl[1]),
        ]));
        break;
      case 3:
        widgetChildren
          ..add(Row(children: <Widget>[
            _buildGridImage(widget.imagesUrl[0]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[1]),
          ]))
          ..add(SimpleDivider(height: widget.spacing, width: 0))
          ..add(Row(children: <Widget>[
            _buildGridImage(widget.imagesUrl[2]),
          ]));
        break;
      case 4:
        widgetChildren
          ..add(Row(children: <Widget>[
            _buildGridImage(widget.imagesUrl[0]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[1]),
          ]))
          ..add(SimpleDivider(height: widget.spacing, width: 0))
          ..add(Row(children: <Widget>[
            _buildGridImage(widget.imagesUrl[2]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[3]),
          ]));
        break;
      case 5:
        widgetChildren
          ..add(Row(children: <Widget>[
            _buildGridImage(widget.imagesUrl[0]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[1]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[2]),
          ]))
          ..add(SimpleDivider(height: widget.spacing, width: 0))
          ..add(Row(children: <Widget>[
            _buildGridImage(widget.imagesUrl[3]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[4]),
          ]));
        break;
      case 6:
        widgetChildren
          ..add(Row(children: <Widget>[
            _buildGridImage(widget.imagesUrl[0]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[1]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[2]),
          ]))
          ..add(SimpleDivider(height: widget.spacing, width: 0))
          ..add(Row(children: <Widget>[
            _buildGridImage(widget.imagesUrl[3]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[4]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[5]),
          ]));
        break;
      case 7:
        widgetChildren
          ..add(Row(children: <Widget>[
            _buildGridImage(widget.imagesUrl[0]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[1]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[2]),
          ]))
          ..add(SimpleDivider(height: widget.spacing, width: 0))
          ..add(Row(children: <Widget>[
            _buildGridImage(widget.imagesUrl[3]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[4]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[5]),
          ]))
          ..add(SimpleDivider(height: widget.spacing, width: 0))
          ..add(Row(
            children: <Widget>[
              _buildGridImage(widget.imagesUrl[6]),
            ],
          ));
        break;
      case 8:
        widgetChildren
          ..add(Row(children: <Widget>[
            _buildGridImage(widget.imagesUrl[0]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[1]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[2]),
          ]))
          ..add(SimpleDivider(height: widget.spacing, width: 0))
          ..add(Row(children: <Widget>[
            _buildGridImage(widget.imagesUrl[3]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[4]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[5]),
          ]))
          ..add(SimpleDivider(height: widget.spacing, width: 0))
          ..add(Row(
            children: <Widget>[
              _buildGridImage(widget.imagesUrl[6]),
              SimpleDivider(height: 0, width: widget.spacing),
              _buildGridImage(widget.imagesUrl[7]),
            ],
          ));
        break;
      case 9:
        widgetChildren
          ..add(Row(children: <Widget>[
            _buildGridImage(widget.imagesUrl[0]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[1]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[2]),
          ]))
          ..add(SimpleDivider(height: widget.spacing, width: 0))
          ..add(Row(children: <Widget>[
            _buildGridImage(widget.imagesUrl[3]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[4]),
            SimpleDivider(height: 0, width: widget.spacing),
            _buildGridImage(widget.imagesUrl[5]),
          ]))
          ..add(SimpleDivider(height: widget.spacing, width: 0))
          ..add(Row(
            children: <Widget>[
              _buildGridImage(widget.imagesUrl[6]),
              SimpleDivider(height: 0, width: widget.spacing),
              _buildGridImage(widget.imagesUrl[7]),
              SimpleDivider(height: 0, width: widget.spacing),
              _buildGridImage(widget.imagesUrl[8]),
            ],
          ));
        break;
    }

    return Column(children: widgetChildren);
  }
}
