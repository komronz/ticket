import 'package:flutter/material.dart';

import 'witem.dart';

class WItemList extends StatelessWidget {
  final List<Detail> items;

  const WItemList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      interactive: true,
      thumbVisibility: true,
      trackVisibility: true,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: items.length,
        itemBuilder: (context, index) => WItem(
          detail: items[index],
        ),
      ),
    );
  }
}
