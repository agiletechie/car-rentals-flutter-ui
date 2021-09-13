import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  final Function addTask;
  AddScreen({this.addTask});

  @override
  Widget build(BuildContext context) {
    String newTask;
    return Container(
      padding: EdgeInsets.all(
        20.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Tasks',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.w400,
              color: Colors.amber,
            ),
          ),
          TextField(
            autofocus: true,
            onChanged: (newString) {
              newTask = newString;
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('ADD'),
          ),
        ],
      ),
    );
  }
}
