import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_page_1/Custom/CustomText.dart';

class CustomNav extends StatefulWidget {
  final String text;
  CustomNav(this.text);
  @override
  _CustomNavState createState() => _CustomNavState();
}

class _CustomNavState extends State<CustomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 14.0),
        child: CustomText(text: widget.text),
      ),
    );
  }
}
