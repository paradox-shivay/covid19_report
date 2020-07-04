import 'package:flutter/material.dart';

class CustomListview extends StatelessWidget {
  CustomListview({@required this.leadingcc,@required this.listheading1,@required this.listdata1});
  final Widget leadingcc;
  final String listheading1;
  final String listdata1;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingcc,
      title: Text(
        listheading1,
        style: TextStyle(
          fontWeight: FontWeight.w900,
        ),
      ),

      trailing: Text(listdata1,
          style: TextStyle(
            fontWeight: FontWeight.w900,
          )),
    );
  }
}
