import 'package:flutter/material.dart';
import 'package:shamo_frontend/themes.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: defaultMargin,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 120,
              height: 120,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Running',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: reguler,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Ultra 4D 5 Shoes',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '\$285,73',
                  style: priceTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
