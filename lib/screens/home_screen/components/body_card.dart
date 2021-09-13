import 'package:flutter/material.dart';
import 'rental_card.dart';

class BodyCard extends StatefulWidget {
  @override
  _BodyCardState createState() => _BodyCardState();
}

class _BodyCardState extends State<BodyCard> {
  int selectedId;

  void selectedCard(int selectedId) {
    setState(() {
      this.selectedId = selectedId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: RentalCard(
              id: 0,
              selectedId: selectedId,
              selectedCard: () {
                selectedCard(0);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: RentalCard(
              id: 1,
              selectedId: selectedId,
              selectedCard: () {
                selectedCard(1);
              },
            ),
          ),
        ),
      ],
    );
  }
}
