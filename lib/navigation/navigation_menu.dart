
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features_of _main_homescreen/cateogory/category.screen.dart';
import '../features_of _main_homescreen/mainhomescreen/home.dart';


class NavigationMenu extends StatefulWidget {
  static String routeName = "/HomeScreen";

  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  final NavigationController controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.green,
        color: Colors.lightBlueAccent,
        animationDuration: const Duration(milliseconds: 300), // Corrected to milliseconds
        items: const <Widget>[
          Icon(Icons.home, size: 30,color: Colors.white,),
          Icon(Icons.category, size: 30,color: Colors.white),
          Icon(Icons.shopping_cart, size: 30,color: Colors.white),
          Icon(Icons.person, size: 30,color: Colors.white), // Changed to Icons.person for profile
        ],
        onTap: (index) {
          controller.changePage(index);
        },
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final selectedIndex = 0.obs; // Use GetX's RxInt for reactive state

  final List<Widget> screens = [
    const MainHomeScreen(),
    const CategoryScreen(),
    Container(color: Colors.orange),
    Container(color: Colors.blue),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
