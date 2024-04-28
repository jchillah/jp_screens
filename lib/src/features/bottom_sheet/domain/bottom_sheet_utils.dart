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
                child: buildBottomSheetDescriptionContainer(context, product),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        SegmentedButton<String>(
                          style: ButtonStyle(
                            shape:
                                MaterialStatePropertyAll(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                              Radius.elliptical(8, 16),
                            ))),
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Colors.grey.shade800;
                                }
                                return Colors.grey.shade900;
                              },
                            ),
                            textStyle: MaterialStatePropertyAll(
                              TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                          segments: const <ButtonSegment<String>>[
                            ButtonSegment<String>(
                              value: "Small",
                              label: Text(
                                'Small',
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                            ButtonSegment<String>(
                              value: "Medium",
                              label: Text(
                                'Medium',
                                style: TextStyle(color: Colors.white24),
                              ),
                            ),
                            ButtonSegment<String>(
                              value: "Large",
                              label: Text(
                                'Large',
                                style: TextStyle(color: Colors.white54),
                              ),
                            ),
                          ],
                          selected: <String>{"Large"},
                          showSelectedIcon: false,
                          onSelectionChanged: (Set<String> newSelection) {},
                        ),
                        const SizedBox(
                          width: 55,
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.remove_circle_rounded,
                            color: Color.fromARGB(255, 103, 102, 102),
                          ),
                          onPressed: () {
                            // Handle quantity decrease
                          },
                        ),
                        const Text(
                          '1',
                          style: TextStyle(color: Colors.white),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_circle_rounded,
                              color: Color.fromARGB(255, 103, 102, 102)),
                          onPressed: () {
                            // Handle quantity increase
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20, bottom: 20),
                      child: Container(
                        height: 40,
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
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
  }
}
