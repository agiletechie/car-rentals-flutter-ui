import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        splashColor: Colors.transparent,
        splashRadius: 20.0,
      ),
      title: Text('Car Rentals'),
      actions: [
        IconButton(
          icon: Icon(
            Icons.notifications,
          ),
          onPressed: () {},
          splashColor: Colors.transparent,
          splashRadius: 20.0,
        ),
        IconButton(
          icon: Icon(
            Icons.share,
          ),
          onPressed: () {},
          splashColor: Colors.transparent,
          splashRadius: 20.0,
        ),
        IconButton(
          icon: Icon(
            Icons.search,
          ),
          onPressed: () {},
          splashColor: Colors.transparent,
          splashRadius: 20.0,
        ),
      ],
    );
  }
}
