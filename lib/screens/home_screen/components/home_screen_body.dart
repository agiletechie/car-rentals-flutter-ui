import 'package:flutter/material.dart';
import 'rental_list_tile.dart';
import 'body_card.dart';

class HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: [
            RentListTile(),
            Divider(
              indent: 90.0,
              endIndent: 20.0,
            ),
            RentListTile(),
            Divider(
              indent: 90.0,
              endIndent: 20.0,
            ),
            RentListTile(),
            Divider(
              indent: 90.0,
              endIndent: 20.0,
            ),
            BodyCard(),
          ],
        ),
      ),
    );
  }
}
