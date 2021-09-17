import 'package:flutter/material.dart';
import '../../widgets/custom_app_bar.dart';
import 'components/home_screen_body.dart';
import '../../widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: HomeScreenBody(),
      drawer: CustomDrawer(),
    );
  }
}
