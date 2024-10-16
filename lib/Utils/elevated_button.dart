import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  const AppElevatedButton({
    super.key, 
    required this.text, 
    required this.onTap, 
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        minimumSize: const Size(double.infinity ,  32),
        backgroundColor: color,
        foregroundColor: Colors.white,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.normal
        ),
      )
    );
  }
}