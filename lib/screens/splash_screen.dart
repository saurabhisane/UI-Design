import 'package:flutter/material.dart';
// import 'package:shipshop/home_screen.dart';
import 'dart:async';
import 'package:shipshop/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return OnboardingScreen();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage("asset/images/image2.jpg"),
                fit: BoxFit.cover,
                opacity: 0.3,
              )),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart,
                size: 200,
                color: Color.fromARGB(255, 238, 80, 80),
              ),
              Text(
                "ShipShop",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          )),
    );
  }
}
