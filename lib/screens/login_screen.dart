import 'package:flutter/material.dart';
import 'package:shipshop/screens/home_screen.dart';
import 'package:shipshop/screens/navigation_screen.dart';
import 'package:shipshop/screens/signup_screen.dart';
import 'package:shipshop/screens/forgot_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset("asset/images/freed.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enter Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Enter Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 20,
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const ForgotScreen();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFDB3022),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const NavigationScreen();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(55),
                        backgroundColor: const Color(0xFFDB3022),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: const Text(
                      "Let's Shop",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't Have an Account?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const SignupScreen();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFDB3022),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
