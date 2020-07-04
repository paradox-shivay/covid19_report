import 'file:///C:/Users/kshiv/AndroidStudioProjects/Product/covid19_report/lib/CodeAssets/CustomAppbar/CustomAppBar.dart';
import 'package:covid19_report/Page/DetailPage.dart';
import 'package:covid19_report/Routes/LeftToRightRoute.dart';
import 'package:covid19_report/Services/RestApiGet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final restapiget = RestApiGet();
  @override
  Widget build(BuildContext context) {
    var divheight = MediaQuery.of(context).size.height;
    var appbarheight = divheight / 2 * 0.3;
    return Scaffold(
      appBar: CustomAppBar(
        height: appbarheight,
        text: 'Covid-19 Overview',
        color: Colors.white,
        fontSize: 30.0,
        wordSpacing: 1.5,
        appcolor: Colors.pinkAccent,
      ),
      body: FutureBuilder(
        future: restapiget.getData(),
        builder: (BuildContext context, snapshot) {
          var coData = snapshot.data;
          if (coData == null) {
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            var loopData = coData["response"];
            return ListView.builder(
              itemCount: loopData.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(context,
                        LeftTORightRoute(
                          widget: DetailPage(
                              loopData[index]["country"].toString(),
                              loopData[index]),
                        )
                    );

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      loopData[index]["country"],
                      style: TextStyle(
                        fontSize: 30,
                        // backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Total Cases: ${loopData[index]["cases"]["total"].toString()}',
                      style: TextStyle(
                        fontSize: 18.0,
                        wordSpacing: 1.5,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                  isThreeLine: true,
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Image.asset('assets/a.png'),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
