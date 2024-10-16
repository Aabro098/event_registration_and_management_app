import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  final int? size;
  final int? textSize;
  const AppElevatedButton({
    super.key, 
    required this.text, 
    required this.onTap, 
    required this.color,
    this.size, 
    this.textSize
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        minimumSize: Size(double.infinity, size != null ? size!.toDouble() : 32),
        backgroundColor: color,
        foregroundColor: Colors.white,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: textSize != null ? textSize!.toDouble() : 22.0,
          fontWeight: FontWeight.normal
        ),
      )
    );
  }
}