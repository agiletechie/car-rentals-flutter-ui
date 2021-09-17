import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/widgets/custom_app_bar.dart';
import 'package:practice/widgets/custom_drawer.dart';
import 'components/profile_screen_body.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      // bottomNavigationBar: CustomNavBar(),
      body: ProfileScreenBody(),
    );
  }
}
