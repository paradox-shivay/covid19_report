import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  final double height;
  final String text;
  final Color color;
  final Color appcolor;
  final double fontSize;
  final double wordSpacing;

  CustomAppBar({
    this.height = kToolbarHeight,
    @required this.text,
    @required this.color,
    @required this.fontSize,
    @required this.wordSpacing,
    @required this.appcolor

  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    var divheight = MediaQuery.of(context).size.height;
    return Container(
      height: divheight / 2 * 0.3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomLeft,
            colors: [
              Colors.purple,
              Colors.pinkAccent,
            ]),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10.0,
          )
        ],
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: 65.0,
              ),
              Text(
                text,
                style: TextStyle(
                  color: color,
                  fontSize: fontSize,
                  wordSpacing: 5.0,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          )
        ],
      ),
    );
  }
}
