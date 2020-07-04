import 'package:covid19_report/CodeAssets/Charts/chart.dart';
import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';

class CustomClayContainerBigView extends StatelessWidget {
  //final data = [55.0, 90.0, 50.0, 40.0, 35.0, 55.0, 70.0, 100.0];
  final data;
  final String headerTest;
  final String headerint;

  CustomClayContainerBigView({@required this.headerint, @required this.headerTest , @required this.data});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ClayContainer(
      height: 300,
      width: width * 0.8,
      depth: 12,
      spread: 12,
      borderRadius: 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16,
              top: 16,
            ),
            child: Text(
              headerTest,
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Text(
              '${headerint}',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w400,
                  color: Colors.pink),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Chart(
            data: data,
          ),
        ],
      ),
    );
  }
}
