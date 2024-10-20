import 'package:flutter/material.dart';

class Detail {
  final String title;
  final String subtitle;

  Detail({required this.title, required this.subtitle});
}

class WItem extends StatelessWidget {
  final Detail detail;

  const WItem({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                detail.title,
                style: const TextStyle(
                  color: Color(0xFF354A85),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
            Flexible(
              child: Text(
                detail.subtitle,
                style: const TextStyle(
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
