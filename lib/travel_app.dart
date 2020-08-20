import 'package:flutter/material.dart';
import 'home_trip.dart';
import 'search.dart';
import 'profile.dart';

class TravelApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TravelApp();
  }
}

class _TravelApp extends State<TravelApp> {
  // * curren tab
  int indexTab = 0;

  void onTapTouch(int index) {
    setState(() {
      indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetChildren = [HomeTrip(), Search(), Profile()];

    return Scaffold(
      body: widgetChildren[indexTab],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(
          onTap: onTapTouch,
          currentIndex: indexTab,
          // * paths
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("")),
          ],
        ),
      ),
    );
  }
}
