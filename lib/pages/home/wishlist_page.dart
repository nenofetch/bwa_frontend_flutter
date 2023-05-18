import 'package:flutter/material.dart';
import 'package:shamo_frontend/themes.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Wishlist Page',
        style: primaryTextStyle.copyWith(
          fontSize: 12,
        ),
      ),
    );
  }
}
