// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../Login With Google/controllers/phone_authentication.dart';
import '../consts/colors.dart';


class OTPScreen extends StatefulWidget {
  final String verification;
  const OTPScreen({
    super.key,
    required this.verification,
  });

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final otpController = TextEditingController();
  _commonPinput([ color = Colors.black]) => PinTheme(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(color: color),
    ),
  );

//verifyOTP

  verifyOTP() async {
    try {
      String result = await PhoneAuthentication().verifyOTPCode(
        verifyId: widget.verification,
        otp: otpController.text,
      );
      if (result == 'success') {
        Navigator.of(context).pushReplacementNamed('/dashScreen');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('OTP Verification Failed'),
            duration: Duration(seconds: 1),
          ),
        );
      }
    } catch (e) {
      e.toString();
    }
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).popAndPushNamed('/phoneScreen');
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/images/otpimage.jpg",
                  height: 200,
                  width: 200,
                ),
              ),
              const Text(
                'OTP Verification',
                style: TextStyle(color:Colors.black87,fontWeight:  FontWeight.bold,),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Enter the OTP Code sent to your number',
                style: TextStyle(color:Colors.black87,fontWeight:  FontWeight.w200),
              ),
              const SizedBox(
                height: 20,
              ),
              Pinput(
                controller: otpController,
                length: 6,
                defaultPinTheme: _commonPinput(),
                focusedPinTheme: _commonPinput(Colors.green),
                followingPinTheme: _commonPinput(Colors.pink),
                onChanged: (value) {
                  otpController.text = value;
                },
              ),
              const SizedBox(height: 100),
            
             ElevatedButton.icon(

              style: ElevatedButton.styleFrom(

                backgroundColor:Colors.deepPurple,

                minimumSize: const Size(250, 50)),
                onPressed:verifyOTP,  

                label: const Text("login", style: TextStyle(
                color: whiteColor,fontSize: 15),),
                  icon: const Icon(
                  Icons.logout_outlined,
                   color: whiteColor,),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
