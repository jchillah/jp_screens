import 'dart:ui';
import 'package:flutter/material.dart';

Widget buildInfoContainer() {
  return Container(
    height: 250,
    margin: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color.fromARGB(31, 255, 255, 255).withOpacity(0.8),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(24.0),
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(0, 37, 37, 37).withOpacity(0.8),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(47, 255, 255, 255).withOpacity(0.8),
                width: 1),
            color: const Color.fromRGBO(0, 0, 0, 0),
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
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 48),
                decoration: BoxDecoration(
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
                    // Handle button press (e.g., navigate to order screen)
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
