import 'package:flutter/material.dart';

class LeftTORightRoute extends PageRouteBuilder {
 Widget widget;
 LeftTORightRoute({this.widget}) : super(
     pageBuilder: (context, animation ,secondaryAnimation) => widget,
     transitionsBuilder: (context ,animation ,secondaryAnimation,child) {
       return SlideTransition(
         position: Tween<Offset>(
           begin: const Offset(-1.0, 0.0),
           end: Offset.zero,
         ).animate(animation),
         child: child,
       );
     }
 );
}