import 'package:flutter/material.dart';
import 'package:shamo_frontend/themes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Page',
        style: primaryTextStyle.copyWith(
          fontSize: 12,
        ),
      ),
    );
  }
}
