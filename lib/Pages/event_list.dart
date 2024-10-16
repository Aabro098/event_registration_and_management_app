import 'package:flutter/material.dart';

import '../Services/event_services.dart';
import '../Utils/event_card.dart';

class EventListScreen extends StatelessWidget {
  EventListScreen({super.key});

  final List<Event> events = [
    Event(
      title: 'Tech Conference 2024',
      date: 'March 12, 2024',
      time: '10:00 AM',
      description:
          'A conference focusing on emerging technologies and innovation in the tech industry.',
    ),
    Event(
      title: 'Flutter Workshop',
      date: 'April 20, 2024',
      time: '2:00 PM',
      description:
          'A hands-on workshop covering Flutter app development for beginners and intermediates.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Explore the Events !',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black45,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: events.length,  
        itemBuilder: (context, index) {
          final event = events[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: EventCard(event: event), 
          );
        },
      ),
    );
  }
}