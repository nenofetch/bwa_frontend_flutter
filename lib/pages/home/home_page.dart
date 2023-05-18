import 'package:flutter/material.dart';
import 'package:shamo_frontend/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Page',
        style: primaryTextStyle.copyWith(
          fontSize: 12,
        ),
      ),
    );
  }
}
