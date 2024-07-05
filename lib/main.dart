import 'package:flutter/material.dart';
import 'package:shipshop/screens/login_screen.dart';
import 'package:shipshop/screens/navigation_screen.dart';
// import 'package:shipshop/screens/onboarding_screen.dart';
import 'package:shipshop/screens/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-Commerce Shopping",
      theme:  ThemeData(
        primaryColor: const Color(0xFFDB3022),
      ),
      home: const SplashScreen(),
    );
  }
}
