import 'package:flutter/material.dart';

class ProfileBodyCard extends StatelessWidget {
  const ProfileBodyCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                CircleAvatar(
                  child: Image.asset(
                    'images/boy.png',
                    height: 60.0,
                  ),
                  radius: 40.0,
                  backgroundColor: Colors.grey.shade200,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Shubham Gupta',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '+91-90979XXXXX',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'shubham@gmail.com',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 8.0,
                ),
                InputChip(
                  avatar: Icon(
                    Icons.favorite,
                    color: Colors.grey.shade700,
                  ),
                  label: const Text('Active'),
                  onPressed: () {
                    print('I am the one thing in life.');
                  },
                ),
                InputChip(
                  avatar: Icon(
                    Icons.favorite,
                    color: Colors.grey.shade700,
                  ),
                  label: const Text('4.5'),
                  onPressed: () {
                    print('I am the one thing in life.');
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '+  UPDATE',
                      style: TextStyle(
                        fontSize: 14.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      primary: Theme.of(context).primaryColor,
                      padding: EdgeInsets.all(12.0),
                      elevation: 5.0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'ACTIVE',
                      style: TextStyle(
                        fontSize: 14.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      primary: Theme.of(context).primaryColor,
                      padding: EdgeInsets.all(12.0),
                      elevation: 5.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
