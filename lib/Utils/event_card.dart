import 'package:event_registration_and_management_app/Pages/registration_page.dart';
import 'package:event_registration_and_management_app/Utils/elevated_button.dart';
import 'package:event_registration_and_management_app/Utils/get_random_color.dart';
import 'package:flutter/material.dart';

import '../Models/event_models.dart';

class EventCard extends StatelessWidget {
  final Event event;

  const EventCard({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(8.0), 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [generateRandomColor(), Colors.black.withOpacity(0.2)],
        ),
      ),
      child: SingleChildScrollView( 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              event.title,
              style: TextStyle(
                fontSize: screenWidth * 0.05,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '${event.date}, ${event.time}',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 10),
            
            Text(
              event.description,
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                color: Colors.black87,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 10), 
            AppElevatedButton(
              text: 'Register',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegistrationPage(),
                  ),
                );
              },
              color: Colors.orange,
              size: 18, 
              textSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}
