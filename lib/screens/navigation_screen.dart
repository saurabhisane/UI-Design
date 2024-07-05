import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shipshop/screens/home_screen.dart';
import 'package:shipshop/screens/profile_screen.dart';
import 'cart_screen.dart';
import 'favourite_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),

      floatingActionButton: SafeArea(
        child: FloatingActionButton(
          onPressed: (){},
          child: Icon(
            Icons.qr_code,
            size: 20,
          ),
          backgroundColor: Color(0xFFDB3022),
          foregroundColor: Colors.white,
        ),
      ),

floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled,
        ],
        activeIndex: pageIndex,
        gapLocation: GapLocation.center,
        activeColor: const Color(0xFFDB3022),
        inactiveColor: Colors.black.withOpacity(0.5),
        iconSize: 25,
        elevation: 0,
        rightCornerRadius: 10,
        leftCornerRadius: 10,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
