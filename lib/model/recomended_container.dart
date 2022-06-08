// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app_ui/constants.dart';

class RecomendedContainer extends StatefulWidget {
  final String imagePath;
  final String plantName;
  final String plantCountry;
  final int plantPrice;
  const RecomendedContainer({Key? key,
  required this.imagePath,
  required this.plantName,
  required this.plantCountry,
  required this.plantPrice,
  }) : super(key: key);

  @override
  State<RecomendedContainer> createState() => _RecomendedContainerState();
}

class _RecomendedContainerState extends State<RecomendedContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      
      width: MediaQuery.of(context).orientation ==
      Orientation.portrait?
      MediaQuery.of(context).size.height*0.19:
      190,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(widget.imagePath),fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.plantName,style: GoogleFonts.saira(fontWeight: FontWeight.bold),),
                  Text("\$${widget.plantPrice}",style: GoogleFonts.saira(color: kPrimaryColor),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,bottom: 5),
              child: Text(widget.plantCountry,style: GoogleFonts.saira(color:Colors.lightGreen),),
            ),
          ],
        ),
      ),
    );
  }
}