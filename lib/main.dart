import 'package:flutter/material.dart';
import 'package:shamo_frontend/pages/cart_page.dart';
import 'package:shamo_frontend/pages/checkout_page.dart';
import 'package:shamo_frontend/pages/checkout_success.dart';
import 'package:shamo_frontend/pages/edit_profile_page.dart';
import 'package:shamo_frontend/pages/home/detail_chat_page.dart';
import 'package:shamo_frontend/pages/home/main_page.dart';
import 'package:shamo_frontend/pages/sign_in_page.dart';
import 'package:shamo_frontend/pages/sign_up_page.dart';
import 'package:shamo_frontend/pages/splash_page.dart';

import 'package:provider/provider.dart';
import 'package:shamo_frontend/providers/auth_provider.dart';
import 'package:shamo_frontend/providers/product_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckOutSuccessPage(),
        },
      ),
    );
  }
}
