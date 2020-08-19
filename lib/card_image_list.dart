import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new CardImage("assets/images/casas.jpg"),
          new CardImage("assets/images/river.jpg"),
          new CardImage("assets/images/cabra.jpg"),
        ],
      ),
    );

    return null;
  }
}
