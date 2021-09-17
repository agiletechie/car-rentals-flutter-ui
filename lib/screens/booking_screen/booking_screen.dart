import 'package:flutter/material.dart';
import 'package:practice/widgets/custom_app_bar.dart';
import 'package:practice/widgets/custom_drawer.dart';
import 'components/booking_screen_body.dart';

class BookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: BookingScreenBody(),
    );
  }
}
