// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/model/large_image_container.dart';
import 'package:plant_app_ui/model/nature_container.dart';
import 'package:expandable_page_view/expandable_page_view.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: 150,
                    child: Container(
                      height: 500,
                      width: 100,
                      child: ListView(
                        children: [
                          NatureModel(iconData: FontAwesomeIcons.sun),
                          NatureModel(iconData: FontAwesomeIcons.sun),
                          NatureModel(iconData: FontAwesomeIcons.sun),
                          NatureModel(iconData: FontAwesomeIcons.sun),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    left: 110,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              15.0, // Move to right 10  horizontally
                              15.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                      ),
                      width: 400,
                      child: ExpandablePageView(
                        children: [
                          LargeImageContainer(
                              color: Colors.blue,
                              imagePath: "assets/images/img.png"),
                          LargeImageContainer(
                              color: Colors.green,
                              imagePath: "assets/images/img.png"),
                          LargeImageContainer(
                              color: Colors.red,
                              imagePath: "assets/images/img.png"),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Icon(
                                  FontAwesomeIcons.arrowLeft,
                                )),
                            Icon(FontAwesomeIcons.ellipsis),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // plant name and price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Angelica",style: GoogleFonts.saira(fontSize: 30,fontWeight:FontWeight.bold),),
                      Text("Russia",style: GoogleFonts.saira(fontSize: 20,fontWeight:FontWeight.bold,color: kPrimaryColor),),
                    ],
                  ),
                  Text("\$440",style: GoogleFonts.saira(fontSize: 20,fontWeight:FontWeight.bold,color: kPrimaryColor),),
                ],
              ),
            ),

            // bottom 2 button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.12,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30),),
                    ),
                    //width: MediaQuery.of(context).size.width*0.5,
                    child: MaterialButton(onPressed: (){},
                    child: Text("Buy Now",style: GoogleFonts.saira(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.white),),),
                  ),
                ),
                SizedBox(width: 30,),
                Expanded(
                  flex: 2,
                  child: Text("Description",style: GoogleFonts.saira(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.black),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
