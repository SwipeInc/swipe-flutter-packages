library boxing_images;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SwipeBoxingImages extends StatefulWidget {
  const SwipeBoxingImages({Key? key}) : super(key: key);

  @override
  State<SwipeBoxingImages> createState() => _SwipeBoxingImagesState();
}

class _SwipeBoxingImagesState extends State<SwipeBoxingImages> {
  List<String> imgUlrs = [
    "https://images.unsplash.com/photo-1552072092-7f9b8d63efcb",
    "https://images.unsplash.com/flagged/photo-1574005280900-3ff489fa1f70",
    "https://images.unsplash.com/photo-1591117207239-788bf8de6c3b",
    "https://images.unsplash.com/photo-1606335543042-57c525922933",
    "https://images.unsplash.com/photo-1618517048289-4646902edaf5"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
          itemCount: imgUlrs.length,
          itemBuilder: (context, index, pageViewIndex) {
            return Container(
              child: Image.network(imgUlrs.elementAt(index)),
            );
          },
          options: CarouselOptions(autoPlay: true)),
    );
  }
}
