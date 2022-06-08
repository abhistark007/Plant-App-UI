// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class FeaturedContainer extends StatefulWidget {
  final String imagePath;
  const FeaturedContainer({Key? key,
  required this.imagePath,
  }) : super(key: key);

  @override
  State<FeaturedContainer> createState() => _FeaturedContainerState();
}

class _FeaturedContainerState extends State<FeaturedContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        //height: MediaQuery.of(context).size.height*0.3,
        width: MediaQuery.of(context).orientation ==
      Orientation.portrait? 
      MediaQuery.of(context).size.height*0.33:
      330,
        child:ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(image: AssetImage(widget.imagePath,),fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}