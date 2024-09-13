
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart' as provider; // Use an alias
import 'package:shared_preferences/shared_preferences.dart';
import 'Login Signup/Screen/login.dart';
import 'Onboboarding/onboarding_view.dart';
import 'Phone Auth/phone_login.dart';
import 'screens/Cart/cart_screen.dart';
import 'screens/Favorite/favorite.dart';
import 'screens/Home/home_screen.dart';
import 'screens/Provider/add_to_cart_provider.dart';
import 'screens/Provider/favorite_provider.dart';
import 'screens/nav_bar_screen.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
  );

  await FirebaseAppCheck.instance.activate(
    webProvider: ReCaptchaV3Provider('recaptcha-v3-site-key'),
    androidProvider: AndroidProvider.debug,
  );

  final prefs = await SharedPreferences.getInstance();
  final onboarding = prefs.getBool("onboarding") ?? false;

  runApp(ProviderScope(child: MyApp(onboarding: onboarding)));
}

class MyApp extends StatelessWidget {
  final bool onboarding;
  const MyApp({super.key, this.onboarding = false});

  @override
  Widget build(BuildContext context) {
    return provider.MultiProvider(
      providers: [
        // for add to cart 
        provider.ChangeNotifierProvider(create: (_) => CartProvider()),
        // for favorite 
        provider.ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: onboarding ? const OnboardingView() : const OnboardingView(),
        // initialRoute: '/splash ', ////this screen is build first time 
        routes: {
          '/LoginScreen': (_) => const LoginScreen(),
          '/phoneScreen': (_) => const PhoneScreen(),
          '/dashScreen': (_) => const DashScreen(),

        '/HomeScreenPage': (context) => const HomeScreenPage(),
        '/Favorite': (context) => const Favorite(),
        '/CartScreen': (context) => const CartScreen(),
        },
      ),
    );
  }
}
