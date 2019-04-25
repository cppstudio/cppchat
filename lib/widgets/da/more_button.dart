import 'package:flutter/material.dart';

class CppMoreButton extends StatefulWidget {
  CppMoreButton({Key key}) : super(key: key);

  _CppMoreButtonState createState() => _CppMoreButtonState();
}

class _CppMoreButtonState extends State<CppMoreButton> {
  final Color pressColor = Colors.grey[300];
  final Color normalColor = Colors.grey[100];
  Color currentColor;

  @override
  void initState() {
    currentColor = normalColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Container(
          color: currentColor,
          child: Icon(Icons.more_horiz),
        ),
      ),
      onTapDown: (TapDownDetails details) {
        setState(() {
          currentColor = pressColor;
        });
      },
      onTapUp: (TapUpDetails details) {
        setState(() {
          currentColor = normalColor;
        });
      },
    );
  }
}
