import 'package:flutter/material.dart';
import 'package:shamo_frontend/models/message_model.dart';
import 'package:shamo_frontend/models/product_model.dart';
import 'package:shamo_frontend/pages/home/detail_chat_page.dart';
import 'package:shamo_frontend/themes.dart';

class ChatTile extends StatelessWidget {
  final MessageModel message;
  const ChatTile(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailChatPage(
              UninitializedProductModel(),
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo.png',
                  width: 54,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoe Store',
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: reguler,
                        ),
                      ),
                      Text(
                        message.message!,
                        style: secondaryTextStyle.copyWith(
                          fontWeight: light,
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: reguler,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 2,
              color: Color(0xff2B2939),
            ),
          ],
        ),
      ),
    );
  }
}
