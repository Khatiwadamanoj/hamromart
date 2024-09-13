import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Login With Google/controllers/phone_authentication.dart';
import 'widgets/common_button.dart';
class DashScreen extends StatefulWidget {
  const DashScreen({super.key});

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  final PhoneAuthentication _phoneAuthentication = PhoneAuthentication();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //signout user
  signOut() async {
    await _phoneAuthentication.logOutUser();
    Navigator.of(context).pushReplacementNamed('/homeScreen');
  }

  @override
  Widget build(BuildContext context) {
    User? user = _auth.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dash Screen'),
        // leading: IconButton(
        //     onPressed: () {
        //       Navigator.of(context).pushReplacementNamed('/homeScreen');
        //     },
        //     icon: const Icon(Icons.arrow_back)),
      ),
      drawer: Drawer(
        width: 300,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 50, 8, 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                leading: user?.photoURL != null
                    ? CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(user!.photoURL!),
                )
                    : null,
                title: Text(user?.displayName ?? ''),
                subtitle: Text(user?.email ?? ''),
              ),
              CommonButton(
                title: 'Logout',
                onPressed: signOut,
                color: Colors.lightBlue,
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/ecommerece.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }
}
