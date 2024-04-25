import 'package:flutter/material.dart';

Widget buildOverviewChoiceChip() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.black, Color.fromARGB(255, 204, 138, 201)],
        ),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Icon(Icons.fastfood_outlined, color: Colors.white),
            SizedBox(width: 10),
            Text(
              'All Categories',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 10),
            Icon(Icons.keyboard_arrow_down, color: Colors.white),
          ],
        ),
      ),
    ),
  );
}
