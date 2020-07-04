import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';

class CustomClayContainerone extends StatelessWidget {
  CustomClayContainerone({@required this.total_deaths});
  final String total_deaths;


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ClayContainer(
      height: 180,
      width: width * 0.35,
      //emboss: true,
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
              "Total Deaths Till Now",//TODO new_casses
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: Colors.black45,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Text(
              total_deaths,//TODO newcase_data
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black45,
              ),
            ),
          ),
          Spacer(),
          Container(
            margin: const EdgeInsets.only(
              bottom: 16,
              left: 16,
              right: 16,
            ),
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
