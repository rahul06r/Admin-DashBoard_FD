// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sampleproject/pages/login.dart';

// import 'package:sampleproject/pages/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? nametexting;
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard Made',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LogInPage(nametexting: nametexting),
  
    );
  }
}
