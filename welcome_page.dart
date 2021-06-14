import 'package:flutter/material.dart';
import 'dart:async';

import 'package:sampleproject/pages/different.dart';

class WelcomePage extends StatefulWidget {
  final String? nametexting;
  const WelcomePage({Key? key, required this.nametexting}) : super(key: key);

  @override
  _WelcomePageState createState() =>
      _WelcomePageState(nametexting: nametexting);
}

class _WelcomePageState extends State<WelcomePage> {
  String? nametexting;
  _WelcomePageState({required this.nametexting});
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => DifferentPage(nametexting: nametexting)));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Text("WELCOME",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                  wordSpacing: 2.0,
                  letterSpacing: 2,
                )),
            Spacer(),
            Text(
              widget.nametexting.toString().toUpperCase(),
              style: TextStyle(
                fontSize: 40,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
