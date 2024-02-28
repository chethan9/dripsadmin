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

import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Imageslideshow extends StatefulWidget {
  const Imageslideshow({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _ImageslideshowState createState() => _ImageslideshowState();
}

class _ImageslideshowState extends State<Imageslideshow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Slider Demo',
      home: ImageSliderPage(),
    );
  }
}

class ImageSliderPage extends StatelessWidget {
  final List<String> imageUrls = [
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/academy-backend-uubu81/assets/rtdvbrpc1emf/bg-1.jpeg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/academy-backend-uubu81/assets/6cvriqnxjpv7/bg-2.jpeg',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/academy-backend-uubu81/assets/z91i3tqd2afd/bg-3_(2).jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AutoImageSlider(imageUrls: imageUrls),
      ),
    );
  }
}

class AutoImageSlider extends StatelessWidget {
  final List<String> imageUrls;

  AutoImageSlider({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height *
          0.99, // You can adjust the height as needed
      child: ImageSlideshow(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.99,
        initialPage: 0,
        indicatorColor: Colors.blue,
        indicatorBackgroundColor: Colors.grey,
        children: imageUrls
            .map((imageUrl) => Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ))
            .toList(),
        autoPlayInterval: 3000, // Set the interval for auto-play
      ),
    );
  }
}
