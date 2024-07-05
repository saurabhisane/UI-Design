import 'package:flutter/material.dart';
import 'package:shipshop/screens/login_screen.dart';
import 'package:shipshop/screens/navigation_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset("asset/images/freed.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enter Name",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enter Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enter Number",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.numbers),
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
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 20,
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye),
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
                      "Create Account",
                      style: TextStyle(
                        fontSize: 20,
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
                        "Already Have An Account?",
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
                                return const LoginScreen();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          "Log In",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
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
