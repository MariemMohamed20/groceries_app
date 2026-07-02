

import 'package:flutter/material.dart';

import 'package:groceries/screen/splash/splash_screen.dart';


class GroceriesApp extends StatelessWidget {
  const GroceriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      
    );
  }
}