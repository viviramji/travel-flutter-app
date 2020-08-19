import 'package:flutter/material.dart';
import 'review_list.dart';
import 'primary_button.dart';

class DescriptionPlace extends StatelessWidget {
  int numberStars;
  String namePlace;
  String descriptionPlace;

  DescriptionPlace(this.numberStars, this.namePlace, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star = drawStars(numberStars);

    final titleStart = Row(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
            child: Text(
              namePlace,
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lato"),
              textAlign: TextAlign.left,
            )),
        star
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(top: 14.0, left: 20.0, right: 20.0),
      child: Text(descriptionPlace,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 15.0, fontFamily: "Lato")),
    );

    // * Cuando los elementos estan apilados uno debajo del otro pues utilizamos una columna.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[titleStart, description, PrimaryButton("Navigate")],
    );
  }

  // * Widget for stars
  Widget makeStar(bool fullStart) {
    return new Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        fullStart ? Icons.star : Icons.star_border,
        color: Colors.yellow,
      ),
    );
  }

  // * Draw stars
  Widget drawStars(int numberStars) {
    List<Widget> rowStars = [];
    List<Widget> rowStarsEmpty = [];

    List(numberStars).forEach((element) => rowStars.add(makeStar(true)));
    List((numberStars - 5).abs())
        .forEach((element) => rowStarsEmpty.add(makeStar(false)));
    List<Widget> finalStars = []..addAll(rowStars)..addAll(rowStarsEmpty);

    return new Row(children: finalStars);
  }
}
