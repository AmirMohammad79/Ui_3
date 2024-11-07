import 'package:flutter/material.dart';

import '../utils/constant.dart';

class NavBarButton extends StatelessWidget {
  final IconData icon;
  final int index;
  final int selectedIndex;
  final VoidCallback onTap;

  const NavBarButton({
    required this.icon,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon,
        size: isSelected ? 40 : 30,
        color: isSelected ? primaryColor : Colors.black45,
      ),
    );
  }
}