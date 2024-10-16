import 'package:event_registration_and_management_app/Utils/elevated_button.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey[300], 
          ),
        ),
        
        Positioned(
          top: 10,
          right: 10,
          child: GestureDetector(
            child: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ),

        const Align(
          alignment: Alignment.center, 
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'This is a description of the event. It provides details about the event, the schedule, and other important information.',
              style: TextStyle(
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
                colors: [Colors.transparent, Colors.black.withOpacity(0.1)],
              ),
            ),
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Event 1',  
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
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
