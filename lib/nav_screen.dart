import 'package:flutter/material.dart';
import 'package:practice/widgets/custom_app_bar.dart';
import 'package:practice/widgets/custom_drawer.dart';
import 'screens/home_screen/components/home_screen_body.dart';
import 'screens/booking_screen/components/booking_screen_body.dart';
import 'screens/profile_screen/components/profile_screen_body.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int index = 0;

  List<Widget> pages = [
    HomeScreenBody(),
    BookingScreenBody(),
    BookingScreenBody(),
    ProfileScreenBody(),
  ];

  void setIndex(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey.shade500,
        currentIndex: index,
        onTap: setIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.drive_eta,
            ),
            label: 'Rentals',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_travel,
            ),
            label: 'Package',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.support_agent,
            ),
            label: 'Support',
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
