import 'dart:ui';

import 'package:flutter/material.dart';

import '../../main_screen/Presentation/main_screen.dart';

Widget buildInfoContainer(BuildContext context) {
  return Container(
    height: 220,
    margin: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color.fromARGB(31, 255, 255, 255).withOpacity(0.1),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(24.0),
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(0, 37, 37, 37).withOpacity(0.1),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 1),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(47, 255, 255, 255).withOpacity(0.1),
                width: 1),
            color: const Color.fromRGBO(0, 0, 0, 0).withOpacity(0.1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Feeling Snackish Today?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Explore Angi´s most popular snack selection\nand get instantly happy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 48),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(218, 128, 163, 1),
                      offset: Offset(0, 4),
                      blurRadius: 28.600000381469727,
                    ),
                  ],
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(190, 91, 166, 1),
                      Color.fromRGBO(245, 154, 165, 1),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: MaterialButton(
                  onPressed: () {
                    // Navigate to the next screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  },
                  child: const Text(
                    '           Order Now           ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
