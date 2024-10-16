
import 'package:event_registration_and_management_app/Pages/event_list.dart';
import 'package:event_registration_and_management_app/Pages/profile_page.dart';
import 'package:event_registration_and_management_app/Pages/registration_page.dart';
import 'package:flutter/material.dart';

import '../Utils/app_bar.dart';
import '../Utils/curved_navigation_bar.dart';


class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectedIndex = 1; 

  final List<Widget> _screens = [
    const RegistrationPage(),
    EventListScreen(),
    const ProfileScreen()
  ];

  final List<IconData> _icons = [
    Icons.calendar_today,
    Icons.list,
    Icons.person,
  ];

  final List<String> pagename= [
    'Register Events',
    'Events List',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          pagename : pagename,
          selectedIndex: selectedIndex,
        ),
        body: IndexedStack(
          index: selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: CustomCurvedNavigationBar(
          icons: _icons,
          selectedIndex: selectedIndex,
          onTap: (index) => setState(() => selectedIndex = index),
        ),
      ),
    );
  }
}
