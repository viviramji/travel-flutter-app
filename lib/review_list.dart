import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review("assets/images/travel-men.jpg", "viviramji", "details",
            "comentario"),
        new Review("assets/images/travel-men.jpg", "viviramji", "details",
            "comentario"),
        new Review("assets/images/travel-men.jpg", "viviramji", "details",
            "comentario"),
      ],
    );
  }
}
