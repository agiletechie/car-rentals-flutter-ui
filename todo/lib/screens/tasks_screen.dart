import 'package:flutter/material.dart';
import 'package:todo/screens/add_screen.dart';
import 'package:todo/task_data.dart';
import 'package:todo/widgets/task_card.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> taskList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: AddScreen(),
            ),
            backgroundColor: Colors.transparent,
          );
        },
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(40.0),
              child: Text(
                'TO-DO App',
                style: TextStyle(
                  fontSize: 40.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                itemCount: 1,
                itemBuilder: (context, index) {
                  return TaskCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
