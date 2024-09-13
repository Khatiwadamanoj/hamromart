import 'package:flutter/material.dart';
class CategoryDetails extends StatelessWidget {
  final String? title;

  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF57b9ff),
        title: Text(
          title ?? 'Category', // Changed to regular Text widget for simplicity
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg3.jpg', // Path to your background image
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
