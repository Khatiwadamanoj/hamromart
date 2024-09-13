

import 'package:flutter/material.dart';
class Onboarding4 extends StatelessWidget {
  const Onboarding4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(40),
          child: Column(

            children:  [
              Image.asset("assets/images/splash_3.png",height: 430,),

              const SizedBox(
                width: 30,
              ),

              const Text("Deliver at your door step",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("From Our Doorstep to Yours -  Swift, Secure, and  Contactless Delivery!",textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
