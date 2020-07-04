import 'package:covid19_report/CodeAssets/CustomClayContainer/CustomClayContainerBigView.dart';
import 'package:covid19_report/CodeAssets/CustomClayContainer/CustomClayContainerone.dart';
import 'package:covid19_report/CodeAssets/CustomClayContainer/CustomClayContainerthree.dart';
import 'package:covid19_report/CodeAssets/CustomClayContainer/CustomClayContainertwo.dart';
import 'package:covid19_report/CodeAssets/CustomListview/CustomListview.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:math';


class DetailPage extends StatefulWidget {
  final title;
  var data ;
  DetailPage(this.title, this.data);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.data);
  }


  @override
  Widget build(BuildContext context) {
    var  covid = widget.data ;
   var codata1 = widget.data['deaths']['total'];
   // var codata = int.parse(codata1);

    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.955),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text(
                    widget.title.toString(),
                    style: TextStyle(fontSize: 50, color: Colors.deepPurple,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text(
                    "Covid-19 Overview",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: CustomClayContainerBigView(
                    data: _getdata(codata1),
                    headerTest: 'Total Cases',
                    headerint: "${widget.data['cases']['total']}".toString(),
                    //TODO total_deaths

                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CustomClayContainerone(total_deaths: '${widget.data['deaths']['total']}',),
                    CustomClayContainertwo(
                      total_population: "${widget.title.toString()} 's Total Population ${widget.data['population']}",
                    ),
                    //
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Other Details",
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    CustomListview(
                      leadingcc: CustomClayContainerthree(
                        icondata: Icons.account_balance_wallet,
                      ),
                      listdata1: "${widget.data['cases']['new']}",
                      listheading1: "New Cases",
                     // listsubheading1:"Recoverd ${widget.data['cases']['recovered']} " ,
                    ),
                    CustomListview(
                      leadingcc: CustomClayContainerthree(
                        icondata: Icons.account_circle,
                      ),
                      listdata1: "${widget.data['cases']['recovered']}",
                      listheading1: "Recoverd",
                      //listsubheading1:"Sc Boul Andre" ,
                    ),
                    CustomListview(
                      leadingcc: CustomClayContainerthree(
                        icondata: Icons.print,
                      ),
                      listdata1: "${widget.data['cases']['active']}",
                      listheading1: "Active Cases",
                     // listsubheading1:"Sc Boul Andre" ,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      //endDrawer: SidebarLayout(),
    );
  }
}
_getdata(codata1) {
  //var codata2 = codata1.toString();
 //var x = codata2.length;
 //var y = 10^(x-2);
 // var z = codata1/y;
  //var codata2 = codata1.toString();
 // print(z);
  return [55.0, 90.0, 50.0, 40.0, 35.0, 55.0, 70.0, 100.0];
 // return [z, z+40, z-5, z-15, z-20, z, z+20, 100.0];

}