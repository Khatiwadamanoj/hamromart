

import 'package:flutter/material.dart';
class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(40),
          child: Column(

            children:  [
              Image.asset("assets/images/splash_2.png",height: 400,),

              const SizedBox(
                height: 30,
              ),

              const Text("Select Payment Method",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("For Seamless Transactions, Choose Your Payment Path - Your Convenience, Our Priority!",textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),
              ),
            ],
          ),
        ),
      ],
    );
  }
}






























































