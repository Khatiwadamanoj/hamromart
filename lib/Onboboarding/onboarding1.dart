
import 'package:flutter/material.dart';
class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF71BEF8),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Image.asset(
                  'images/logo3.png', // Replace with your image path
                  height: 500,
                  width: 450,
                ),
                 const SizedBox(
                   height: 150,
                 ),
            ],
          ),
        ),
      ),
    );
  }
}


