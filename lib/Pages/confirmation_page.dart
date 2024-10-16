import 'package:event_registration_and_management_app/Utils/elevated_button.dart';
import 'package:flutter/material.dart';

import '../Utils/app_bar.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(pagename: ['Confirm Registration'], selectedIndex: 0),
        body: Column(
          children: [
            const ListTile(
              title: Text('Name'),
              subtitle: Text('Arbin Shrestha'),
            ),
            const ListTile(
              title: Text('Event Title'),
              subtitle: Text('Intern Register'),
            ),
            const ListTile(
              title: Text('Date'),
              subtitle: Text('2024/10/76'),
            ),
            const ListTile(
              title: Text('Time'),
              subtitle: Text('11:00'),
            ),
            const SizedBox(height: 10),
            AppElevatedButton(text: 'Confirm Register', onTap: (){}, color: Colors.orange)
          ],
        )
      ),
    );
  }
}