import 'package:flutter/material.dart';
import 'package:shipshop/screens/recovery_screen.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  TextEditingController textEditingController = TextEditingController(text: "");

  /// get signature code
  // _getSignatureCode() async {
  //   String? signature = await SmsVerification.getAppSignature();
  //   print("signature $signature");
  // }

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Enter OTP",
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
                "Please Enter the OTP Code that we have sent you to your Number, Please Check your Number and enter here to verify the OTP",
                style: TextStyle(
                  fontSize: 20  ,
                ),
              ),
              
              const SizedBox(
                height: 50,
              ),
              TextFieldPin(
                  textController: textEditingController,
                  autoFocus: false,
                  codeLength: 4,
                  alignment: MainAxisAlignment.center,
                  defaultBoxSize: 55.0,
                  margin: 10,
                  selectedBoxSize: 46.0,
                  textStyle: const TextStyle(fontSize: 16),
                  defaultDecoration: _pinPutDecoration.copyWith(
                      border: Border.all(
                    color: Colors.grey,
                  )),
                  selectedDecoration: _pinPutDecoration,
                  onChange: (code) {
                    setState(() {});
                  }),
              const SizedBox(
                height: 40,
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
                  "Verify",
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
