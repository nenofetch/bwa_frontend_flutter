import 'package:flutter/material.dart';
import 'package:shamo_frontend/themes.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Text('Login'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
