

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Login Signup/Screen/login.dart';
import 'onboarding1.dart';
import 'onboarding2.dart';
import 'onboarding3.dart';
import 'onboarding4.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
   final PageController _controller = PageController();

   // keep track of if we are on the last page or not
   bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF71BEF8),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onLastPage = (index == 3);
              });
            },
            children: const [
              Onboarding1(),
              Onboarding2(),
              Onboarding3(),
              Onboarding4(),
            ],
          ),


          // Dot indicators

          Container(
              alignment: const Alignment(0,0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    TextButton(
                        onPressed:(){
                         _controller.jumpToPage(3)  ;
                },
                        child: const Text("Skip",style:TextStyle(color: Colors.black,fontSize: 16),)),
                  SmoothPageIndicator(controller: _controller, count: 4,
                   effect: const ExpandingDotsEffect(
                     activeDotColor: Color.fromARGB(255, 184, 103, 255),
                     dotColor: Color.fromARGB(255, 0, 39, 212),
                    dotHeight:7,
                    dotWidth: 7,
                   ),
                  ),
                  onLastPage?
                  ElevatedButton(
                      onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const LoginScreen();
                      }));
                      },
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                      child: const Text("Done"),
                  ): TextButton(
                    onPressed:(){
                      _controller.nextPage(duration: const Duration(milliseconds: 500),curve: Curves.easeIn)  ;
                    },
                    child: const Text("Next" ,style:TextStyle(color: Colors.black,fontSize: 16)),
                  ),
                ],
              ))
        ],
      )
    );
  }
}
