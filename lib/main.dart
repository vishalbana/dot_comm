import 'package:dot_comm/models/shop.dart';
import 'package:dot_comm/pages/cart_page.dart';
import 'package:dot_comm/pages/shop_page.dart';
import 'package:dot_comm/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/index_page.dart';

void main() {
  runApp(
  ChangeNotifierProvider(
    create:(context) => Shop(),
    child: const MyApp(),
    ),
    );
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IndexPage(),
      theme: lightMode,
      routes: {
        '/index_page':(context) => const IndexPage(),
        '/shop_page':(context) => const ShopPage(),
        '/cart_page':(context) => const CartPage(),
      },
    );
  }
}