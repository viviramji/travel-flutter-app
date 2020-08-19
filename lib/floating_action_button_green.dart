import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>
    with AutomaticKeepAliveClientMixin {
  IconData icon;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    this.icon = Icons.favorite_border;
  }

  void onFavPressed() {
    setState(() {
      if (this.icon == Icons.favorite_border) {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Liked")));
        this.icon = Icons.favorite;
      } else {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Disliked")));
        this.icon = Icons.favorite_border;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // * Action botton
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Favorite",
      child: Icon(this.icon),
      onPressed: onFavPressed,
    );
  }
}
