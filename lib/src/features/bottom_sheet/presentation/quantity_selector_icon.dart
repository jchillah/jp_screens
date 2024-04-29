import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final void Function(int) onQuantityChanged;

  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.onQuantityChanged,
  });

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
          style: const TextStyle(color: Colors.white),
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
