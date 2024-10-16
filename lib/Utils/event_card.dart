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
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: generateRandomColor(), 
          ),
        ),

        Align(
          alignment: Alignment.center, 
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              event.description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black87,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,  
            ),
          ),
        ),

        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black.withOpacity(0.4)],
              ),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  event.title,  
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${event.date}, ${event.time}',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal
                  ),
                )
              ],
            ),
          ),
        ),

        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: AppElevatedButton(
              text: 'Register', onTap: (){}, color: Colors.orange
            )
          ),
        ),
      ],
    );
  }
}
