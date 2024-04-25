import 'package:flutter/material.dart';
import 'package:jp_screens/src/features/main_screen/Presentation/choicechip.dart';
import 'package:jp_screens/src/features/main_screen/Presentation/overview_choicechip.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/hintergruende/bg_mainscreen.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Positioned(
              top: 70,
              left: 20,
              child: Text(
                'Choose Your Favorite\nSnack',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildOverviewChoiceChip(),
                  const SizedBox(
                    width: 10,
                  ),
                  buildChoiceChip(
                    label: 'Salty',
                    isSelected: true,
                    backgroundColor: const Color(0x00edc6e9),
                    selectedColor: const Color.fromARGB(255, 238, 196, 233)
                        .withOpacity(0.3),
                    labelColor: Colors.black,
                    onTap: () {},
                    showCheckmark: false,
                  ),
                  const SizedBox(width: 10),
                  buildChoiceChip(
                    label: 'Sweet',
                    isSelected: false,
                    backgroundColor: const Color.fromARGB(176, 204, 138, 201),
                    selectedColor: const Color.fromARGB(255, 237, 199, 233)
                        .withOpacity(0.3),
                    labelColor: Colors.white,
                    onTap: () {},
                    showCheckmark: false,
                  ),
                  const SizedBox(width: 10),
                  buildChoiceChip(
                    label: 'Spicy',
                    isSelected: false,
                    backgroundColor: const Color.fromARGB(176, 204, 138, 201),
                    selectedColor: const Color.fromARGB(255, 237, 199, 233)
                        .withOpacity(0.3),
                    labelColor: Colors.white,
                    onTap: () {},
                    showCheckmark: false,
                  ),
                ],
              ),
            ),
            Positioned(
                top: 237,
                left: 20,
                child: Image.asset("assets/images/Rectangle 973.png")),
            Positioned(
                top: 310,
                left: 160,
                child: Image.asset("assets/grafiken/Burger_3D.png")),
            Positioned(
                top: 270,
                left: 50,
                child: Column(
                  children: [
                    const Text(
                      "Angi´s Yummy Burger",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Delish Vegan burger\nthat tastes like heaven",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Text(
                        "A 13,99",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 14),
                      ),
                    ),
                    Positioned(
                      top: 420,
                      left: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Add to order"),
                      ),
                    ),
                  ],
                )),
            Positioned(
                top: 525,
                left: 50,
                child: Text(
                  "We Recommend",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 14),
                ))
          ],
        ),
      ),
    );
  }
}
