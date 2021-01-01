import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final String image;
  CustomContainer(this.image);
  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(widget.image),
            fit: BoxFit.cover,
            
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        height: 270.0,
        width: 200,
      ),
    );
  }
}
