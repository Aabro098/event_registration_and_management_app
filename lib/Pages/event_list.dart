import 'package:flutter/material.dart';

import '../Models/event_models.dart';
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
    Event(
      title: 'AI Summit 2024',
      date: 'May 5, 2024',
      time: '9:00 AM',
      description:
          'An annual summit discussing the latest trends and breakthroughs in artificial intelligence and machine learning.',
    ),
    Event(
      title: 'Startup Pitch Night',
      date: 'June 15, 2024',
      time: '6:00 PM',
      description:
          'An exciting night where startups pitch their innovative ideas to investors and industry experts.',
    ),
    Event(
      title: 'Design Thinking Workshop',
      date: 'July 28, 2024',
      time: '11:00 AM',
      description:
          'A creative workshop that introduces participants to the principles of design thinking and problem-solving strategies.',
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
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
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