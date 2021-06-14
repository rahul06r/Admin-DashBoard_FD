// import 'dart:js';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sampleproject/pages/login.dart';
import '../data.dart';

class Dashboard extends StatefulWidget {
  final String? nametexting;

  const Dashboard({Key? key, required this.nametexting}) : super(key: key);
  @override
  _DashboardState createState() => _DashboardState(nametexting: nametexting);
}

class _DashboardState extends State<Dashboard> {
  String? nametexting;
  _DashboardState({required this.nametexting});
  void initState() {
    // for first card

    // var timer1 = Timer.periodic(Duration(seconds: 10), (_) {
    //   setState(() {
    //     firstnum += 10;
    //   });
    // });

    // // for second card

    // var timer2 = Timer.periodic(Duration(seconds: 10), (_) {
    //   setState(() {
    //     // minutes: 1
    //     secodnum += 5;
    //   });
    // });

    // // for third card

    // var timer3 = Timer.periodic(Duration(seconds: 20), (_) {
    //   setState(() {
    //     thirdnum += 100;
    //   });
    // });

    // // for fourth card

    // var timer4 = Timer.periodic(Duration(seconds: 10), (_) {
    //   setState(() {
    //     fourthnum -= 2;
    //   });
    // });

    super.initState();
  }

  int firstnum = 100;
  int secodnum = 50;
  int thirdnum = 300;
  int fourthnum = 50;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.grey.withOpacity(.5),
        child: Column(
          children: [
            Container(
              height: 150,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      "Dashboard",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .4,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Search here!",
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            labelStyle: TextStyle(
                              color: Colors.black,
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            useSafeArea: true,
                            context: context,
                            builder: (_) {
                              return Center(
                                  child: Material(
                                child: Container(
                                  width: 400,
                                  height: 500,
                                  color: Colors.yellow,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Your Account",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 35),
                                      ),
                                      SizedBox(height: 10),
                                      Spacer(),
                                      Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Center(
                                              child: Text(
                                                  nametexting![0].toString(),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20)))),
                                      Text(nametexting.toString().toUpperCase(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                      Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (_) => LogInPage(
                                                        nametexting:
                                                            nametexting)));
                                          },
                                          child: Container(
                                            // width: 200,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.red,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Icon(
                                                    Icons.logout,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Logout?",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                            });
                      },
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black.withOpacity(.5), width: 1),
                            color: Colors.grey.withOpacity(.1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                // width: 50,
                                height: 50,
                                color: Colors.yellow,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(nametexting![0].toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                  ),
                                )),
                            SizedBox(width: 20),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  widget.nametexting.toString().toUpperCase(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // card section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Pcard(
                  bicons: Icons.arrow_upward,
                  micons: Icons.shopping_cart,
                  bheading: "Up from yesterday",
                  mheading: "Total Order",
                  mnum: firstnum.toInt(),
                  bicolor: Colors.green,
                  ricolor: Colors.blueAccent,
                ),
                Pcard(
                  bicons: Icons.arrow_upward,
                  micons: Icons.shopping_cart,
                  bheading: "Up from yesterday",
                  mheading: "Total Sales",
                  mnum: secodnum,
                  bicolor: Colors.green,
                  ricolor: Colors.yellow,
                ),
                Pcard(
                  bicons: Icons.arrow_upward,
                  micons: Icons.shopping_cart,
                  bheading: "Up from yesterday",
                  mheading: "Total Profit",
                  mnum: thirdnum,
                  bicolor: Colors.green,
                  ricolor: Colors.lime,
                ),
                Pcard(
                  bicons: Icons.arrow_downward,
                  micons: Icons.shopping_cart,
                  bheading: "Down from yesterday",
                  mheading: "Total Return",
                  mnum: fourthnum,
                  bicolor: Color(0xffff0000),
                  ricolor: Color(0xffff0000),
                ),

                // card ends here
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .54,
                    child: Card(
                      elevation: 10,
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Text(
                              "Recents Sales",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              child: Column(
                                children: [
                                  // table heading

                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      tableheader.length,
                                      (index) => Container(
                                        alignment: Alignment.center,
                                        // color: Colors.red,
                                        width: 200,
                                        child: Text(
                                          tableheader[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ),
                                  ),

                                  // table data
                                  Column(
                                    children: List.generate(tabledata.length,
                                        (index) {
                                      return Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              productdetails(context, index);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                    alignment: Alignment.center,
                                                    width: 200,
                                                    height: 30,
                                                    child: Text(tabledata[index]
                                                        ['date'])),
                                                Container(
                                                    alignment: Alignment.center,
                                                    width: 200,
                                                    height: 30,
                                                    child: Text(tabledata[index]
                                                        ['name'])),
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: 200,
                                                  height: 30,
                                                  child: Text(
                                                    tabledata[index]['sales'],
                                                    style: tabledata[index]
                                                                ['sales'] ==
                                                            "Pending"
                                                        ? TextStyle(
                                                            color:
                                                                Colors.orange,
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.bold)
                                                        : TextStyle(
                                                            color:
                                                                Colors.black),
                                                  ),
                                                ),
                                                Container(
                                                    alignment: Alignment.center,
                                                    width: 200,
                                                    height: 30,
                                                    child: Text(tabledata[index]
                                                        ['total'])),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                        ],
                                      );
                                    }),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            // Padding(
                            //   padding:
                            //       const EdgeInsets.only(right: 10, bottom: 10),
                            //   child: Align(
                            //     alignment: Alignment.bottomRight,
                            //     child: Material(
                            //       elevation: 5,
                            //       borderRadius: BorderRadius.circular(20),
                            //       color: Colors.transparent,
                            //       child: InkWell(
                            //         onTap: () {
                            //           IndexedStack(index: 3);
                            //         },
                            //         child: Container(
                            //           alignment: Alignment.center,
                            //           width: 100,
                            //           height: 40,
                            //           decoration: BoxDecoration(
                            //               color: Colors.blue,
                            //               borderRadius:
                            //                   BorderRadius.circular(20)),
                            //           child: Text(
                            //             "See All",
                            //             style: TextStyle(color: Colors.white),
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .54,
                    child: Card(
                      elevation: 10,
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 10, bottom: 10),
                                child: Center(
                                  child: Text(
                                    "Top Selling Products",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Column(
                                children:
                                    List.generate(rcfirst.length, (index) {
                                  return Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 35,
                                            margin: EdgeInsets.only(left: 10),
                                            height: 35,
                                            decoration: BoxDecoration(
                                                color: Colors.orangeAccent,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Center(
                                              child: Text(
                                                "im",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 30),
                                          Container(
                                            width: 200,
                                            alignment: Alignment.center,
                                            child: Text(rcfirst[index],
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                          SizedBox(width: 30),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 100,
                                            child: Text(rcsecond[index],
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  );
                                }),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent,
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  onTap: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Text(
                                      "See All",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> productdetails(BuildContext context, int index) {
    return showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Container(
              width: 600,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    tabledata[index]['id'].toString(),
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text(tabledata[index]['date'].toString(),
                      style: TextStyle(fontWeight: FontWeight.w700)),
                  Text(tabledata[index]['name'],
                      style: TextStyle(fontWeight: FontWeight.w700)),
                  Text(tabledata[index]['sales'],
                      style: tabledata[index]['sales'] == 'Pending'
                          ? TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.deepOrange)
                          : TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                  Text(tabledata[index]['total'],
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 25)),
                ],
              ),
            ),
          );
        });
  }
}

class Pcard extends StatelessWidget {
  final micons;
  final mheading;
  final int mnum;
  final bheading;
  final bicons;
  final ricolor;
  final bicolor;
  const Pcard({
    Key? key,
    this.micons,
    this.bicons,
    this.mheading,
    required this.mnum,
    this.bheading,
    this.ricolor,
    this.bicolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        height: 200,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          // margin: EdgeInsets.all(15),
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  mheading,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      mnum.toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: ricolor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        micons,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: bicolor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      bicons,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    bheading,
                    style: TextStyle(fontWeight: FontWeight.w700),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
