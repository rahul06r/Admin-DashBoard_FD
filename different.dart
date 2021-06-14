import 'package:flutter/material.dart';
import 'package:sampleproject/pages/login.dart';
// import 'package:sampleproject/pages/message_page.dart';
import 'package:sampleproject/pages/orderpage.dart';
import 'package:sampleproject/pages/teams.dart';

import '../data.dart';
import 'dashboard.dart';

class DifferentPage extends StatefulWidget {
  final String? nametexting;

  const DifferentPage({Key? key, required this.nametexting}) : super(key: key);
  @override
  _DifferentPageState createState() =>
      _DifferentPageState(nametexting: nametexting);
}

class _DifferentPageState extends State<DifferentPage> {
  String? nametexting;
  _DifferentPageState({required this.nametexting});

  int leftindex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 20),
                        child: Text(
                          "flutter_boydev",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Column(
                        children: List.generate(leftdata.length, (index) {
                          return Padding(
                            padding:
                                EdgeInsets.only(left: 20, top: 20, bottom: 15),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  leftindex = index;
                                });
                              },
                              child: Container(
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: leftindex == index
                                      ? Colors.yellow
                                      : Colors.blue,
                                  boxShadow: [
                                    leftindex == index
                                        ? BoxShadow(
                                            color: Colors.yellow,
                                            offset: Offset(-2, -2),
                                            spreadRadius: 4,
                                            blurRadius: 10,
                                          )
                                        : BoxShadow(
                                            color: Colors.blue,
                                            offset: Offset(-2, -2),
                                            spreadRadius: 4,
                                          ),
                                  ],
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                ),
                                width: 280,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 5),
                                      Icon(
                                        leftdata[index]['icons'],
                                        color: leftindex == index
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                      SizedBox(width: 20),
                                      Text(
                                        leftdata[index]['name'],
                                        style: TextStyle(
                                            color: leftindex == index
                                                ? Colors.black
                                                : Colors.white,
                                            fontSize: 20),
                                      ),
                                      Spacer(),
                                      leftindex == index
                                          ? Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8),
                                              child: Icon(
                                                Icons.arrow_right_alt_rounded,
                                                size: 35,
                                              ),
                                            )
                                          : Container(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25, top: 20, bottom: 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => LogInPage(
                                          nametexting: '',
                                        )));
                          },
                          child: Row(
                            children: [
                              Icon(Icons.logout, color: Colors.white),
                              SizedBox(width: 20),
                              Text("LogOut",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.white,
                  child: IndexedStack(
                    index: leftindex,
                    children: [
                      Dashboard(nametexting: nametexting),
                      Center(
                          child: Text(leftdata[1]['name'],
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold))),
                      Center(
                          child: Text(leftdata[2]['name'],
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold))),
                      OrderPage(),
                      Teams(),
                      Center(
                          child: Text(leftdata[5]['name'],
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold))),
                      Center(
                          child: Text(leftdata[6]['name'],
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold))),
                      Center(
                          child: Text(leftdata[7]['name'],
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold))),
                      // orderpage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
