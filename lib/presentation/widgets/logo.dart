import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 3),
        width: 95,
        height: 33,
        decoration: BoxDecoration(color: Colors.grey[500]),
        child: const Text(
          textAlign: TextAlign.center,
          'Logo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
