import 'package:flutter/material.dart';
import 'package:grocery_delivery_app/presentation/screens/home/home_screen.dart';
import 'package:grocery_delivery_app/presentation/screens/item/item_screen.dart';

import 'presentation/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}


  