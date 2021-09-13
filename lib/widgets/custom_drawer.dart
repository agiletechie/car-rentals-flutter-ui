import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            CustomDrawerHeader(),
            ListTile(
              title: Text(
                'Messages',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
              trailing: Icon(
                Icons.navigate_next,
                color: Colors.white,
                size: 26.0,
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
            DrawerMenu(
              iconData: Icons.favorite,
              title: 'Your Tips',
            ),
            DrawerMenu(
              iconData: Icons.account_balance_wallet,
              title: 'Wallets',
            ),
            DrawerMenu(
              iconData: Icons.star,
              title: 'Ratings',
            ),
            DrawerMenu(
              iconData: Icons.settings,
              title: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
          ),
        ),
      ),
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(
              Icons.face,
              color: Colors.black,
              size: 40.0,
            ),
            backgroundColor: Colors.grey.shade300,
            radius: 30.0,
          ),
          title: Text(
            'Shubham Gupta',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  final IconData iconData;
  final String title;

  DrawerMenu({this.iconData, this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
      // tileColor: Colors.amber,
    );
  }
}
