import 'package:flutter/material.dart';

import '../Utils/elevated_button.dart';
import '../Utils/form.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _registerFormKey = GlobalKey<FormState>();
  bool isLoading = false;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();
  final TextEditingController _commentsController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              key: _registerFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,  
                crossAxisAlignment: CrossAxisAlignment.center,  
                children: [
                  const Text(
                    'Join the Excitement!\nRegister for Your Next Big Event Here!',
                    textAlign: TextAlign.center,  
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 10.0), 
                  AppForm(
                    controller: _nameController, 
                    hintText: 'Full Name'
                  ),
                  const SizedBox(height: 10.0), 
                  AppForm(
                    controller: _emailController, 
                    hintText: 'Email'
                  ),
                  const SizedBox(height: 10.0), 
                  AppForm(
                    controller: _phoneController, 
                    hintText: 'Phone Number',
                  ),
                  const SizedBox(height: 10.0),
                  AppForm(
                    controller: _dateController, 
                    hintText: 'Select Date'
                  ), 
                  const SizedBox(height: 10.0),
                  AppForm(
                    controller: _typeController, 
                    hintText: 'Select Type'
                  ),
                  const SizedBox(height: 10.0), 
                  AppForm(
                    controller: _commentsController, 
                    hintText: 'Write Comments'
                  ),
                  const SizedBox(height: 10.0), 
                  isLoading
                  ? const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.orange)
                  )
                  : AppElevatedButton(
                      text: 'Register', 
                      onTap: (){

                      }, 
                      color: Colors.orange
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _dateController.dispose();
    _typeController.dispose();
    _commentsController.dispose();
    super.dispose();
  }
}
