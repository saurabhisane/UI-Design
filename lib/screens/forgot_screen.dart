import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shipshop/screens/otp_screen.dart';
import 'package:shipshop/screens/recovery_screen.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool clrButton = false;

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Please Enter Your Email Address. You will receive a link to create or set a new password via Email ",
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailController,
                onChanged: (val) {
                  if (val != "") {
                    setState(() {
                      clrButton = true;
                    });
                  }
                },
                decoration: InputDecoration(
                  labelText: "Email",
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.person),
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        emailController.clear();
                      });
                    },
                    child: const Icon(
                      CupertinoIcons.multiply,
                      color: Color(0xFFDB3022),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const RecoveryScreen();
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
                  "Send Code",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20,),
                  const Text("OR"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const OtpScreen();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      "Verify Using Number",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFDB3022),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
