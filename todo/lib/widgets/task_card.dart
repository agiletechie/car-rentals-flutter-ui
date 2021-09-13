import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Task 1'),
        trailing: Checkbox(
          activeColor: Colors.deepPurpleAccent,
          value: true,
          onChanged: (bool newValue) {},
        ),
        // contentPadding: EdgeInsets.only(
        //   left: 20.0,
        // ),
      ),
      elevation: 2.0,
      color: Colors.amberAccent,
    );
  }
}
