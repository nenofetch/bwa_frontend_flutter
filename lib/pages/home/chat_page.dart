import 'package:flutter/material.dart';
import 'package:shamo_frontend/themes.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Chat Page',
        style: primaryTextStyle.copyWith(
          fontSize: 12,
        ),
      ),
    );
  }
}
