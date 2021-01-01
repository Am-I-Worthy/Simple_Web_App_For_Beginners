import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_page_1/Custom/CustomContainer.dart';
import 'package:web_page_1/Custom/CustomNav.dart';
import 'package:web_page_1/Custom/CustomText.dart';

List<String> catagory = ['All', 'Popular', 'Recents', 'Most-viewed'];
  List<String> image = [
    "https://images.pexels.com/photos/2113566/pexels-photo-2113566.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/33041/antelope-canyon-lower-canyon-arizona.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/417344/pexels-photo-417344.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/248771/pexels-photo-248771.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/33545/sunrise-phu-quoc-island-ocean.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/5015523/pexels-photo-5015523.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/1518500/pexels-photo-1518500.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/580151/pexels-photo-580151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/1837603/pexels-photo-1837603.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/2901212/pexels-photo-2901212.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  ];
class RightPage extends StatefulWidget {
  @override
  _RightPageState createState() => _RightPageState();
}

class _RightPageState extends State<RightPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.4,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0, left: 15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.menu, size: 30.0),
                  Spacer(),
                  Row(
                    children: [
                      FlatButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5.0),
                          child: CustomText(
                            text: "Travel stories",
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5.0),
                          child: CustomText(
                            text: "Blog",
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 13.0,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/4889486/pexels-photo-4889486.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                      ),
                      SizedBox(
                        width: 15.0,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              CustomText(
                text: "Let's Enjoy",
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                text: "the Vacation",
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: 12.0,
              ),

              Container(
                padding: EdgeInsets.only(right:15.0),
                decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                height: 50.0,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     Icon(Icons.search_outlined,size: 20.0),
                     Padding(
                       padding: const EdgeInsets.only(left:8.0),
                       child: CustomText(text: "search"),
                     ),
                    ],
                  ),
                ),

              ),
              Row(
                children: catagory.map((e) => CustomNav(e)).toList(),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                            child: Row(
                  children: image.map((e) => CustomContainer(e)).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
