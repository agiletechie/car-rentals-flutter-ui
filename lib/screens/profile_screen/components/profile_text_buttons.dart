import 'package:flutter/material.dart';

class ProfileTextButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: Text('ACCEPT'),
          style: TextButton.styleFrom(
            primary: Theme.of(context).primaryColor,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text('DECLINE'),
          style: TextButton.styleFrom(
            primary: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
