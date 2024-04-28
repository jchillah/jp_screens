import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_screens/src/features/main_screen/domain/product.dart';

Widget buildBottomSheetDescriptionContainer(
    BuildContext context, Product product) {
  return Container(
    height: 400,
    margin: const EdgeInsets.all(0.0),
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color.fromARGB(31, 255, 255, 255).withOpacity(0.1),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(24.0),
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(0, 37, 37, 37).withOpacity(0.1),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(47, 255, 255, 255).withOpacity(0.1),
              width: 1,
            ),
            color: const Color.fromRGBO(0, 0, 0, 0).withOpacity(0.1),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.favorite_border_sharp,
                      color: Colors.white24,
                    ),
                    Text(
                      "200",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Text(
                "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrent. Id aliquet quis quam.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                product.price,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const Row(children: [
                SizedBox(
                  height: 50,
                ),
                SizedBox(width: 30),
                Text(
                  'Ingredients',
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 160, 159, 159)),
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  width: 170,
                ),
                Text(
                  'Reviews',
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 160, 159, 159)),
                  textAlign: TextAlign.right,
                ),
              ]),
              const SizedBox(height: 8),
              Row(
                children: [
                  const SizedBox(width: 30),
                  Image.asset('assets/images/ic1.png'),
                  const Padding(padding: EdgeInsets.all(2.0)),
                  Image.asset('assets/images/ic2.png'),
                  const Padding(padding: EdgeInsets.all(2.0)),
                  Image.asset('assets/images/ic3.png'),
                  const Padding(padding: EdgeInsets.all(2.0)),
                  Image.asset('assets/images/ic4.png'),
                  const SizedBox(width: 150),
                  const Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 12.0,
                  ),
                  const Icon(Icons.star, color: Colors.white, size: 14.0),
                  const Icon(Icons.star, color: Colors.white, size: 14.0),
                  const Icon(Icons.star, color: Colors.white, size: 14.0),
                  const Icon(Icons.star_border,
                      color: Color.fromARGB(255, 160, 159, 159), size: 12.0),
                  const SizedBox(width: 8.0),
                  const Text("4.0",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 160, 159, 159))),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
