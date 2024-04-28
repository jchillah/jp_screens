import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final void Function(int) onQuantityChanged;

  const QuantitySelector({
    Key? key,
    required this.quantity,
    required this.onQuantityChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            Icons.remove_circle_rounded,
            color: Color.fromARGB(255, 103, 102, 102),
          ),
          onPressed: () {
            onQuantityChanged(quantity - 1);
          },
        ),
        Text(
          '$quantity',
          style: TextStyle(color: Colors.white),
        ),
        IconButton(
          icon: const Icon(Icons.add_circle_rounded,
              color: Color.fromARGB(255, 103, 102, 102)),
          onPressed: () {
            onQuantityChanged(quantity + 1);
          },
        ),
      ],
    );
  }
}
