import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WBottomNavBar extends StatefulWidget {
  const WBottomNavBar({super.key});

  @override
  State<WBottomNavBar> createState() => _WBottomNavBarState();
}

class _WBottomNavBarState extends State<WBottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFEDEDED),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: const Offset(0, -4),
                blurRadius: 10,
                spreadRadius: 0.3,
              ),
            ],
          ),
          child: InkWell(
            splashFactory: InkSplash.splashFactory,
            onTap: () {},
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFFFBDE02),
              ),
              padding: const EdgeInsets.all(16),
              child: const Text(
                "BUY TICKET",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color(0xFF4F6054),
                ),
              ),
            ),
          ),
        ),
        BottomNavigationBar(
          backgroundColor: const Color(0xFF29498F),
          unselectedItemColor: Colors.grey,
          selectedItemColor: const Color(0xFFFBDE02),
          currentIndex: _currentIndex,
          // Active tab index
          onTap: (index) {
            setState(() {
              _currentIndex = index; // Update active tab on tap
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Tickets',
              icon: Icon(CupertinoIcons.tickets_fill),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.map_fill),
              label: 'Traffic information',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ],
    );
  }
}
