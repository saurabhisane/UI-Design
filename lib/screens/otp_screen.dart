import 'package:flutter/material.dart';
import 'package:shipshop/screens/otp_verify_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
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
                height: 50,
              ),
              const Text(
                "Please Enter Your Number. You will receive a OTP to create or set a new password via Number",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Enter OTP",
                  border: OutlineInputBorder(),
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
                        return const OtpVerifyScreen();
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
            ],
          ),
        ),
      ),
    );
  }
}
