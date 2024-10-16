
import 'package:flutter/material.dart';

class AppForm extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const AppForm({
    super.key,
    required this.controller,
    required this.hintText, 
    required String? Function(dynamic value) validator,
  });

  @override
  State<AppForm> createState() => _AppFormState();
}

class _AppFormState extends State<AppForm> {
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.orange,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.orange.shade200,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.orange.shade700, 
            width:2.0
          ),
        ),
      ),
    );
  }
}
