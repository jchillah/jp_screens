import 'package:flutter/material.dart';
import 'package:jp_screens/src/features/main_screen/Presentation/burger_widget.dart';
import 'package:jp_screens/src/features/main_screen/Presentation/choicechip.dart';
import 'package:jp_screens/src/features/main_screen/Presentation/overview_choicechip.dart';
import 'package:jp_screens/src/features/main_screen/Presentation/product_view.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = ["All Categories", "Salty", "Sweet", "Spicy"];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/hintergruende/bg_mainscreen.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Choose Your Favorite\nSnack',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                itemCount: names.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return index == 0
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: buildOverviewChoiceChip(),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: buildChoiceChip(
                            label: names[index],
                            isSelected: names[index] == 'Salty',
                            backgroundColor: Color.fromARGB(255, 203, 138, 201),
                            selectedColor: Color.fromARGB(255, 238, 196, 233)
                                .withOpacity(0.3),
                            labelColor: Colors.black,
                            onTap: () {},
                            showCheckmark: false,
                          ),
                        );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: const BurgerWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "We Recommend",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            Row(
              children: [
                ProductWidget(
                  productName: "Balu's Cup",
                  productDescription: "Pistachio ice cream",
                  productPrice: "A 8.99",
                  productImage: 'assets/grafiken/Ice.png',
                ),
                SizedBox(width: 20),
                ProductWidget(
                  productName: "Mogli's Cup",
                  productDescription: "Strawberry ice cream",
                  productPrice: "A 8.99",
                  productImage: 'assets/grafiken/Catcupcakes_3d.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
