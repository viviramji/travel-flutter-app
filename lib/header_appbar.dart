import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  String title;

  HeaderAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack(title), CardImageList()],
    );
  }
}
