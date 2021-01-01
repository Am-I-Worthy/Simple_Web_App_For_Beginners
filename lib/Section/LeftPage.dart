import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_page_1/Custom/CustomText.dart';

class LeftPage extends StatefulWidget {
  @override
  _LeftPageState createState() => _LeftPageState();
}

class _LeftPageState extends State<LeftPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://images.pexels.com/photos/931018/pexels-photo-931018.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
          fit: BoxFit.cover,
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width *0.6 ,
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 20.0),
            child: CustomText(
              text: "Travellr",
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "hey",
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                CustomText(
                  text: "Where are you going on",
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                CustomText(
                  text: "for Vacation Holidays ?",
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 12.0,
                ),
                FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    height: 40.0,
                    width: 170.0,
                    child: Center(
                      child: CustomText(
                        text: "Plan a vacation",
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
