import 'package:flutter/material.dart';
import 'package:ticket/features/details/presentation/pages/DetailsScreen.dart';

import '../widgets/wbottom_nav_bar.dart';
import '../widgets/wticket.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
      bottomNavigationBar: const WBottomNavBar(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        size: 32,
                        Icons.refresh_rounded,
                        color: Color(0xFF29498F),
                      ),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Tickets",
                      style: TextStyle(
                        color: Color(0xFF29498F),
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20),
              child: Text(
                "SELECTED TICKETS",
                style: TextStyle(
                  color: Color(0xFF323232),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
            WTicket(
              onClick: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
