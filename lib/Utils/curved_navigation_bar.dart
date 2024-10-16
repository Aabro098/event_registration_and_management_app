
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CustomCurvedNavigationBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomCurvedNavigationBar({
    super.key,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: selectedIndex,
      height: 60.0,
      items: icons.map((icon) {
        int index = icons.indexOf(icon);
        return Icon(
          icon,
          color: index == selectedIndex ? Colors.orange.shade100 : Colors.black54,
          size: 28.0, 
        );
      }).toList(),
      color: Colors.orange.shade100,
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: Colors.black54, 
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300), 
      onTap: onTap,
    );
  }
}
