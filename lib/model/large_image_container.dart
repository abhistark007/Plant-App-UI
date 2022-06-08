// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class LargeImageContainer extends StatefulWidget {
  final Color color;
  final String imagePath;
  const LargeImageContainer({Key? key,
  required this.color,
  required this.imagePath,
  }) : super(key: key);

  @override
  State<LargeImageContainer> createState() => _LargeImageContainerState();
}

class _LargeImageContainerState extends State<LargeImageContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30),),
          image: DecorationImage(
            image: AssetImage(widget.imagePath),
            fit: BoxFit.cover,
          )
        ),
      ),
    );
  }
}