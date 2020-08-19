import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review("assets/images/travel-man.jpg", "viviramji", "details",
            "Well done!"),
        new Review("assets/images/travel-man.jpg", "viviramji", "details",
            "Keep goint!"),
        new Review("assets/images/travel-man.jpg", "viviramji", "details",
            "Don't give up"),
      ],
    );
  }
}
