import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';

class CustomClayContainerthree extends StatelessWidget {
  CustomClayContainerthree({@required this.icondata});
  final  icondata;
  @override
  Widget build(BuildContext context) {
    return ClayContainer(
      width: 40,
      height: 40,
      borderRadius: 8,
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
            Color(0xFFFF559F),
            Color(0xFFCF5CCF),
            Color(0xFFFF57AC),
            Color(0xFFFF6D91),
            Color(0xFFFF8D7E),
            Color(0xFFB6BAA6),
          ]).createShader(bounds);
        },
        blendMode: BlendMode.srcATop,
        child: Icon(
          icondata,
          color: Colors.red,
          size: 30,
        ),
      ),
    );
  }
}
