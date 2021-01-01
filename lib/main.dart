import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_page_1/Custom/CustomText.dart';
import 'package:web_page_1/Section/LeftPage.dart';
import 'package:web_page_1/Section/RightPage.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        LeftPage(),
        RightPage(),
      ]),
    );
  }
}

