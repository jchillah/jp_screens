import 'package:flutter/material.dart';
import 'package:jp_screens/src/features/bottom_sheet/presentation/bottom_sheet_container.dart';
import 'package:jp_screens/src/features/main_screen/domain/product.dart';

class BottomSheetUtils {
  static void showBottomSheet(BuildContext context, Product product) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.black,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          clipBehavior: Clip.none,
          height: MediaQuery.of(context).size.height * 0.91,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft:
                  Radius.zero, // Setzt die obere linke Ecke auf keine Rundung
              topRight:
                  Radius.zero, // Setzt die obere rechte Ecke auf keine Rundung
            ),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.cancel, // icon X
                      color: Color.fromARGB(255, 77, 75, 75),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Positioned(
                top: -120,
                left: 0,
                right: 0,
                child: Container(
                  height: 500,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  top: 250,
                  left: 10,
                  right: 10,
                  child:
                      buildBottomSheetDescriptionContainer(context, product)),
            ],
          ),
        );
      },
    );
  }
}
