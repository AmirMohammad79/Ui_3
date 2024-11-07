import 'package:flutter/material.dart';
import '../utils/constant.dart';

class CategoryButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryButton({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}