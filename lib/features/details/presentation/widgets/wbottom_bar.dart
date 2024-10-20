import 'package:flutter/material.dart';

class WBottomBar extends StatelessWidget {
  final Function() validate;
  final Function() selfValidation;

  const WBottomBar({
    super.key,
    required this.validate,
    required this.selfValidation,
  });

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
          child: Column(
            children: [
              InkWell(
                onTap: validate,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFFBDE02),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: InkWell(
                    onTap: validate,
                    child: const Text(
                      "VALIDATE",
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
              InkWell(
                onTap: selfValidation,
                child: Container(
                  margin: const EdgeInsets.only(top: 16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFD9D8D8),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    "SELF-VALIDATION",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFF4F6054),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
