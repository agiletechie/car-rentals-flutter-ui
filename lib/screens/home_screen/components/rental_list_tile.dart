import 'package:flutter/material.dart';

class RentListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.car_rental,
        size: 60.0,
      ),
      title: Text('Three-line item'),
      subtitle: Text(
        'Lorem ipsum, in graphical and textual context, '
        'refers to filler text that.',
      ),
      isThreeLine: true,
      trailing: IconButton(
        icon: Icon(
          Icons.bookmark,
          color: Colors.grey.shade700,
        ),
        onPressed: () {},
      ),
    );
  }
}
