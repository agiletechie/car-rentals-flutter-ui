import 'package:flutter/material.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_nav_bar.dart';
import '../../widgets/custom_drawer.dart';
import 'components/rental_list_tile.dart';
import 'components/body_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
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
      ),
      drawer: CustomDrawer(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
