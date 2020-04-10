import 'package:flutter/material.dart';

class Slide {
  final String imageURL;
  final String title;
  final String description;

  Slide({
    @required this.imageURL,
    @required this.title,
    @required this.description,
  });
}

final sildeList = [
  Slide(
    imageURL: "images/slide1.png",
    title: "We Do Your Shopping",
    description:
        "You do not need to worry about your shopping anymore. In this pandimic situation we hold your back.",
  ),
  Slide(
    imageURL: "images/slide2.png",
    title: "We Do Your Shopping",
    description:
    "You do not need to worry about your shopping anymore. In this pandimic situation we hold your back.",
  ),
  Slide(
    imageURL: "images/slide3.png",
    title: "We Do Your Shopping",
    description:
    "You do not need to worry about your shopping anymore. In this pandimic situation we hold your back.",
  )

];
