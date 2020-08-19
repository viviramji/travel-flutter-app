import 'package:flutter/material.dart';
import 'package:travel_app/description_place.dart';
import 'review_list.dart';
import 'gradient_back.dart';

import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  int numberStars = 5;
  String namePlace = "Turbaco";
  String decriptionPlace =
      "Lorem impsu Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Travel App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            // appBar: AppBar(title: Text("Travel App")),
            body: Stack(children: <Widget>[
          ListView(
            children: <Widget>[
              DescriptionPlace(numberStars, namePlace, decriptionPlace),
              ReviewList()
            ],
          ),
          GradientBack("Popular")
        ])));
  }
}
