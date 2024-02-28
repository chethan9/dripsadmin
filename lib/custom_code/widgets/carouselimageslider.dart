// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:carousel_slider/carousel_slider.dart';

class Carouselimageslider extends StatefulWidget {
  const Carouselimageslider({
    Key? key,
    this.width,
    this.height,
    required this.imgList,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String> imgList;

  @override
  _CarouselimagesliderState createState() => _CarouselimagesliderState();
}

class _CarouselimagesliderState extends State<Carouselimageslider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(enlargeCenterPage: true, height: 900),
        items: widget.imgList
            .map((item) => Container(
                  child: Center(child: Image.network(item, fit: BoxFit.cover)),
                ))
            .toList(),
      )),
    );
  }
}
