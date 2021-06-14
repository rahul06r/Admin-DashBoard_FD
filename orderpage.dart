// import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:sampleproject/data.dart';

// import '../data.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int firstnum = 100;
  @override
  void initState() {
    // final timer1 = Timer.periodic(Duration(seconds: 10), (_) {
    //   setState(() {
    //     firstnum += 10;
    //   });
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // here declare singlechild scrool view if u want mmore height or have more data
      child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
            ],
          )),
    );
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
