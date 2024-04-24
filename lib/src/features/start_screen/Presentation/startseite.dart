import 'package:flutter/material.dart';
import 'package:jp_screens/src/features/start_screen/Presentation/cupcake_image.dart';
import 'package:jp_screens/src/features/start_screen/Presentation/info_container.dart';
import 'details_image.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/hintergruende/bg_startscreen.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 340,
              left: MediaQuery.of(context).size.width / 2 - 350,
              child: buildCupcakeImage(),
            ),
            Positioned(
              top: 400,
              left: 0,
              child: buildDetailsImage(),
            ),
            Positioned(
              bottom: 70,
              left: 16,
              right: 16,
              child: buildInfoContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
