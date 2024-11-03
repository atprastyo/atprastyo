import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.0,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.grey.shade100,
            Colors.grey.shade50,
            Colors.white,
            Colors.grey.shade50,
          ],
        ),
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(2, 6),
            blurRadius: 8,
          )
        ],
      ),
    );
  }
}
