import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Login Signup/Screen/home_screen.dart';
import 'Login Signup/Screen/login.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        // Builder : (context, snapshot){}
        builder: (context, snapshot) {
          // user already logged in xa bane
          if (snapshot.hasData) {
            return  const HomeScreen();
            // print(snapshot.hasData);
          }
          // if user is not logged in
          else {
            return const LoginScreen();

          }
        },
      ),
    );
  }
}





// {
//   "project_info": {
//     "project_number": "981994564753",
//     "project_id": "onlineshoppings-26f37",
//     "storage_bucket": "onlineshoppings-26f37.appspot.com"
//   },
//   "client": [
//     {
//       "client_info": {
//         "mobilesdk_app_id": "1:981994564753:android:d3757457e80b6a6adfe330",
//         "android_client_info": {
//           "package_name": "com.example.onlineshoppings"
//         }
//       },
//       "oauth_client": [],
//       "api_key": [
//         {
//           "current_key": "AIzaSyBywMJEh_J7rl6V7CP0qoIbFgYKqYIpZZs"
//         }
//       ],
//       "services": {
//         "appinvite_service": {
//           "other_platform_oauth_client": []
//         }
//       }
//     }
//   ],
//   "configuration_version": "1"
// }