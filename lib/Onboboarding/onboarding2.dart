
import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children:  [
            Image.asset("assets/images/splash_1.png",height: 450,),

            const Text("Choose your product",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
        const Text("Welcome to a World of Limitless Choices - Your Perfect Product Awaits!",textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),
              ),

          ],
        ),
      ],
    );
  }
}


































