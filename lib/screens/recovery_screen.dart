import 'package:flutter/material.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Forgot Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Reset Code",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.numbers,size: 20,),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "New Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock,size: 20,),
                  suffixIcon: Icon(Icons.remove_red_eye,size: 20,),
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
                  prefixIcon: Icon(Icons.lock,size: 20,),
                  suffixIcon: Icon(Icons.remove_red_eye,size: 20,),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) {
                  //         return RecoveryScreen();
                  //       },
                  //     ),
                  //   );
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(55),
                    backgroundColor: const Color(0xFFDB3022),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                child: const Text(
                  "Reset Password",
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
