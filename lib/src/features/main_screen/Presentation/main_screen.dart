import 'package:flutter/material.dart';
import 'package:jp_screens/src/features/main_screen/Presentation/burger_widget.dart';
import 'package:jp_screens/src/features/main_screen/Presentation/choicechip.dart';
import 'package:jp_screens/src/features/main_screen/Presentation/overview_choicechip.dart';
import 'package:jp_screens/src/features/main_screen/Presentation/product_view.dart';
import 'package:jp_screens/src/features/main_screen/domain/product.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key});

  final List<Product> products = [
    moglisCup,
    balusCup,
    waffle,
    stick,
  ];

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "All Categories",
      "Salty",
      "Sweet",
      "Spicy",
      "Sour",
      "Bitter"
    ];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/hintergruende/bg_mainscreen.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Choose Your Favorite',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Snack",
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
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: buildOverviewChoiceChip(),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: buildChoiceChip(
                        label: names[index],
                        isSelected: names[index] == 'Salty',
                        backgroundColor:
                            const Color.fromARGB(255, 203, 138, 201),
                        selectedColor: const Color.fromARGB(255, 238, 196, 233)
                            .withOpacity(0.3),
                        labelColor: names[index] == 'Salty'
                            ? Colors.black
                            : Colors.white,
                        onTap: () {},
                        showCheckmark: false,
                      ),
                    );
                  }
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: BurgerWidget(),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "We Recommend",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: 300, // Adjust height as needed
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      _showBottomSheet(context, products[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ProductWidget(product: products[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _showBottomSheet(BuildContext context, Product product) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
            height: 200,
            color: Colors.red,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Bottom sheet'),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Close bottom sheet'),
                  ),
                ],
              ),
            ));
      });
}
