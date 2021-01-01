import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  CustomText({this.fontSize, this.fontWeight, this.color, this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.varelaRound(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}