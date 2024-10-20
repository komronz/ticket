import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/wbottom_bar.dart';
import '../widgets/witem.dart';
import '../widgets/witem_list.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  static List<Detail> items = [
    Detail(title: "FARE DESCRIPTION", subtitle: "Daily APP"),
    Detail(title: "TYPE", subtitle: "Valido fino al termine del servizio del giorno della prima validazione, rete URBANA + SUBURBANA GTT"),
    Detail(title: "DURATION", subtitle: "Viaggi in METRO illimitati"),
    Detail(title: "INITIAL VALIDATION", subtitle: "03/10/202421:30"),
    Detail(title: "LAST VALIDATION", subtitle: "03/10/202421:30"),
    Detail(title: "LINE", subtitle: "Line 33"),
    Detail(title: "CITY/TOWN", subtitle: "AREA SUBURBANA+U"),
    Detail(title: "VALIDITY END", subtitle: "04/10/202402:59"),
    Detail(title: "REMAINING JOURNEYS", subtitle: "0"),
    Detail(title: "PURCHASE DATE", subtitle: "25/09/2024"),
    Detail(title: "EXPIRY", subtitle: "25/09/2025"),
    Detail(title: "PRICE", subtitle: "3,70€"),
    Detail(title: "TICKET SERIAL NUMBER", subtitle: "38017011170500547"),
    Detail(title: "CONTRACT SERIAL NUMBER", subtitle: "ae110bde-001ba9da"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFEDEDED),
        bottomNavigationBar: WBottomBar(
          validate: () {},
          selfValidation: () {},
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xFFEDEDED),
          leading: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => Navigator.pop(context),
            child: const Icon(
              CupertinoIcons.back,
              color: Color(0xFF354A85),
              size: 28,
            ),
          ),
          centerTitle: true,
          title: const Text(
            "Selected ticket",
            style: TextStyle(
              color: Color(0xFF354A85),
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        body: WItemList(items: items));
  }
}
