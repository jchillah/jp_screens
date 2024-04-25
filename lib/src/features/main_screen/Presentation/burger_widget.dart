import 'package:flutter/material.dart';
import 'package:jp_screens/src/features/single_view/Presentation/single_view.dart/single_view.dart';

class BurgerWidget extends StatelessWidget {
  const BurgerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/Rectangle 973.png"),
        Positioned(
          right: 0,
          bottom: -20,
          child: Image.asset(
            "assets/grafiken/Burger_3D.png",
          ),
        ),
        const Positioned(
          top: 20,
          left: 20,
          child: Row(
            children: [
              Text(
                "Angi´s Yummy Burger                                   ",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              Icon(
                Icons.star,
                color: Color.fromARGB(255, 238, 130, 180),
              ),
              Text(
                "4.8",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        const Positioned(
          top: 40,
          left: 20,
          child: Text(
            "Delish Vegan burger\nthat tastes like heaven",
            style: TextStyle(
              fontWeight: FontWeight.w200,
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
        const Positioned(
          top: 80,
          left: 20,
          child: Text(
            "A 13,99",
            textAlign: TextAlign.end,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
        Positioned(
          top: 170,
          left: 20,
          child: Container(
            width: 100,
            height: 40,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(218, 128, 163, 1),
                  offset: Offset(0, 4),
                  blurRadius: 28.600000381469727,
                ),
              ],
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(195, 144, 229, 1),
                  Color.fromRGBO(173, 142, 235, 1),
                  Color.fromRGBO(150, 140, 242, 1),
                ],
              ),
            ),
            child: MaterialButton(
              onPressed: () {
                // Navigate to the next screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SingleView()),
                );
              },
              child: const Text(
                'Add to order',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
