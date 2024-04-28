import 'package:flutter/material.dart';

class SizeSegmentedButton extends StatelessWidget {
  final String selectedSize;
  final void Function(Set<String>) onSelectionChanged;

  const SizeSegmentedButton({
    Key? key,
    required this.selectedSize,
    required this.onSelectionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<String>(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.elliptical(8, 16),
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.grey.shade800;
            }
            return Colors.grey.shade900;
          },
        ),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 12,
          ),
        ),
      ),
      segments: <ButtonSegment<String>>[
        ButtonSegment<String>(
          value: "Small",
          label: Text(
            'Small',
            style: TextStyle(
              color: selectedSize == 'Small' ? Colors.white54 : Colors.white24,
            ),
          ),
        ),
        ButtonSegment<String>(
          value: "Medium",
          label: Text(
            'Medium',
            style: TextStyle(
              color: selectedSize == 'Medium' ? Colors.white54 : Colors.white24,
            ),
          ),
        ),
        ButtonSegment<String>(
          value: "Large",
          label: Text(
            'Large',
            style: TextStyle(
              color: selectedSize == 'Large' ? Colors.white54 : Colors.white24,
            ),
          ),
        ),
      ],
      selected: <String>{selectedSize},
      showSelectedIcon: false,
      onSelectionChanged: onSelectionChanged,
    );
  }
}
