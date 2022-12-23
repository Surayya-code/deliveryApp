import 'package:flutter/material.dart';
import 'package:grocery_delivery_app/presentation/screens/home/home_screen.dart';
import 'package:grocery_delivery_app/presentation/screens/item/item_screen.dart';
import 'package:provider/provider.dart';

import 'presentation/screens/splash/splash_screen.dart';
import 'provider/product_cart_sheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_)=>ProductCartSheet(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),routes: {
          "/":(context) =>const SplashScreen(),
          "homePage":(context) =>const HomeScreen(),
          "itemPage":(context) =>const ItemScreen(),
        },
       //home: const SplashScreen(),
      ),
    );
  }
}


  