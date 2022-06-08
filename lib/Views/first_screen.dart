// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app_ui/Views/second_screen.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_app_ui/model/featured_container.dart';
import 'package:plant_app_ui/model/recomended_container.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _bottomNavIndex=0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
        leading: Icon(
          FontAwesomeIcons.sliders,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Container(
                    width: size.width,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? size.height * 0.2
                        : size.height * 0.26,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hi Abhi!",
                            style: GoogleFonts.saira(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Image(
                            image: AssetImage("assets/images/logo.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: size.width * 0.1,
                  right: size.width * 0.1,
                  top: size.height * 0.17,
                  height: 45,
                  //width: size.width*0.8,
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
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        hoverColor: Colors.white,
                        labelText: "Search",
                        suffixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recomended",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: MaterialButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Get.to(()=>SecondScreen());
                      },
                      child: Text(
                        "More",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              //color: Colors.red,
              width: size.width,
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? size.height * 0.32
                  : 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: [
                  RecomendedContainer(
                      imagePath: "assets/images/image_1.png",
                      plantName: "SAMANTHA",
                      plantCountry: "Russia",
                      plantPrice: 499),
                  RecomendedContainer(
                      imagePath: "assets/images/image_2.png",
                      plantName: "SAMANTHA",
                      plantCountry: "Russia",
                      plantPrice: 499),
                  RecomendedContainer(
                      imagePath: "assets/images/image_3.png",
                      plantName: "SAMANTHA",
                      plantCountry: "Russia",
                      plantPrice: 499),
                  RecomendedContainer(
                      imagePath: "assets/images/image_3.png",
                      plantName: "SAMANTHA",
                      plantCountry: "Russia",
                      plantPrice: 499),
                  RecomendedContainer(
                      imagePath: "assets/images/image_3.png",
                      plantName: "SAMANTHA",
                      plantCountry: "Russia",
                      plantPrice: 499),
                  RecomendedContainer(
                      imagePath: "assets/images/image_3.png",
                      plantName: "SAMANTHA",
                      plantCountry: "Russia",
                      plantPrice: 499),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? 20
                  : 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured Plants",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "More",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //color: Colors.red,
              width: size.width,
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? size.height * 0.32
                  : 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: [
                  FeaturedContainer(
                      imagePath: "assets/images/bottom_img_1.png"),
                  FeaturedContainer(
                      imagePath: "assets/images/bottom_img_2.png"),
                  FeaturedContainer(
                      imagePath: "assets/images/bottom_img_2.png"),
                  FeaturedContainer(
                      imagePath: "assets/images/bottom_img_2.png"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        gapWidth: 10,
      icons: [
        FontAwesomeIcons.gear,
        FontAwesomeIcons.heart,
        FontAwesomeIcons.user
      ],
      activeIndex: _bottomNavIndex,
      onTap: (index) => setState(() => _bottomNavIndex = index),
      //other params
   ),
    );
  }
}
