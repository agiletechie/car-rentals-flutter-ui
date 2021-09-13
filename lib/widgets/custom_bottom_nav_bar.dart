import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int index = 0;

  void setIndex(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey.shade500,
      currentIndex: index,
      onTap: setIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
          backgroundColor: Theme.of(context).primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.drive_eta,
          ),
          label: 'Rentals',
          backgroundColor: Theme.of(context).primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.card_travel,
          ),
          label: 'Package',
          backgroundColor: Theme.of(context).primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.support_agent,
          ),
          label: 'Support',
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
