import 'package:clay_containers/clay_containers.dart';
import 'package:covid19_report/Page/DetailPage.dart';
import 'package:covid19_report/Page/Home.dart';
import 'package:covid19_report/Routes/LeftToRightRoute.dart';
import 'package:flutter/material.dart';

class CustomClayContainertwo extends StatelessWidget {
  CustomClayContainertwo({this.total_population});
  final String total_population;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ClayContainer(
      height: 180,
      width: width * 0.35,
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
              "$total_population", //todo
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Text(
              "@copyright by Paradox Solutions",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Colors.black45,
              ),
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    LeftTORightRoute(
                      widget: Home(),
                    ));
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 16, right: 16),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset('assets/india.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
