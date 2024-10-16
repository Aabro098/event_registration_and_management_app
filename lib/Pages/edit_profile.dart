
import 'package:flutter/material.dart';

import '../Utils/app_bar.dart';
import '../Utils/elevated_button.dart';

class EditProfileScreen extends StatefulWidget {
  final String label;
  final String initialValue;
  final Function(String) onSave;
  const EditProfileScreen({
    super.key, 
    required this.label, 
    required this.initialValue, 
    required this.onSave
  });

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(pagename: ['Edit ${widget.label}'], selectedIndex: 0),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 16),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: widget.label,
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              AppElevatedButton(
                text: 'Done', 
                onTap: (){
                   
                }, 
                color: Colors.orange.shade600
              )
            ],
          ),
        ),
      ),
    );
  }
}