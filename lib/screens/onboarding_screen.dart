import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shipshop/screens/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 19,
      ),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      imagePadding: EdgeInsets.zero,
      pageColor: Colors.white,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Shop Now",
          body:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
          image: Image.asset(
            "asset/images/splash1.png",
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Big Discount",
          body:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
          image: Image.asset(
            "asset/images/splash2.png",
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Free Delivery",
          body:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
          image: Image.asset(
            "asset/images/splash3.png",
            width: 200,
          ),
          decoration: pageDecoration,
          footer: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  backgroundColor: const Color(0xFFDB3022),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
              child: const Text(
                "Let's Shop",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
      showDoneButton: false,
      showSkipButton: false,
      showBackButton: true,
      back: const Text(
        "Back",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xFFDB3022),
        ),
      ),
      next: const Text(
        "Next",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xFFDB3022),
        ),
      ),
      // done: const Text(
      //   "Done",
      //   style: TextStyle(
      //     fontWeight: FontWeight.w600,
      //     color: Color(0xFFEF6969),
      //   ),
      // ),
      // skip: const Text(
      //   "Skip",
      //   style: TextStyle(
      //     fontWeight: FontWeight.w600,
      //     color: Color(0xFFEF6969),
      //   ),
      // ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
        size: const Size.square(10),
        activeSize: const Size(20, 10),
        activeColor: const Color(0xFFDB3022),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.black,
        spacing: const EdgeInsets.symmetric(horizontal: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
