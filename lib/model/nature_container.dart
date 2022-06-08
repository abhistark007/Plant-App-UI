// ignore_for_file: unused_import, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NatureModel extends StatefulWidget {
  final IconData iconData;
  const NatureModel({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  @override
  State<NatureModel> createState() => _NatureModelState();
}

class _NatureModelState extends State<NatureModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.all(20),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
         color: Colors.white54,
        // ignore: prefer_const_literals_to_create_immutables
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
      child: Center(
        child: Icon(widget.iconData),
      ),
    );
  }
}
