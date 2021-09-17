import 'package:flutter/material.dart';
import 'package:practice/nav_screen.dart';
import 'package:practice/screens/home_screen/home_screen.dart';

class ProfileBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        child: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 25.0,
            color: Theme.of(context).primaryColor,
          ),
          splashRadius: 22.0,
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => NavScreen(),
              ),
            );
          },
        ),
        backgroundColor: Colors.grey.shade300,
      ),
    );
  }
}
