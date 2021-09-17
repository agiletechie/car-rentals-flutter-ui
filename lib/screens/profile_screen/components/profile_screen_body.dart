import 'package:flutter/material.dart';
import 'package:practice/screens/profile_screen/components/profile_text_buttons.dart';
import 'profile_body_card.dart';
import 'profile_back_button.dart';

class ProfileScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileBackButton(),
            ProfileBodyCard(),
            Divider(
              thickness: 5.0,
              color: Colors.deepPurple.shade100,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Two line text string with two action button. '
                'One to two line is preferable on mobile and tablet.',
                style: TextStyle(
                  height: 1.5,
                ),
              ),
            ),
            ProfileTextButtons(),
          ],
        ),
      ),
    );
  }
}
