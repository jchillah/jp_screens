import 'package:flutter/material.dart';
import 'package:jp_screens/src/features/bottom_sheet/domain/quantity_selector_icon.dart';
import 'package:jp_screens/src/features/bottom_sheet/domain/segmented_button.dart';
import 'package:jp_screens/src/features/bottom_sheet/presentation/bottom_sheet_container.dart';
import 'package:jp_screens/src/features/main_screen/domain/product.dart';

class BottomSheetUtils {
  static void showBottomSheet(BuildContext context, Product product) {
    int quantity = 1;
    String selectedSize = "";

    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.black,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.91,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -120,
                    left: 0,
                    right: 0,
                    child: SizedBox(
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
                        buildBottomSheetDescriptionContainer(context, product),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 24,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizeSegmentedButton(
                            selectedSize: selectedSize,
                            onSelectionChanged: (Set<String> newSelection) {
                              setState(() {
                                selectedSize = newSelection.first;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 55,
                          ),
                          QuantitySelector(
                            quantity: quantity,
                            onQuantityChanged: (newQuantity) {
                              setState(() {
                                quantity = newQuantity;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, bottom: 20),
                        child: Container(
                          height: 40,
                          width: 370,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
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
                                Color.fromRGBO(190, 91, 166, 1),
                                Color.fromRGBO(245, 154, 165, 1),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              // Navigate to the next screen
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Placeholder()),
                              );
                            },
                            child: Text(
                              'Add to order for ${product.price}',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.highlight_off_outlined,
                          color: Color.fromARGB(255, 151, 148, 148),
                          size: 36,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
