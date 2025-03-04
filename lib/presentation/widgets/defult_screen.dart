import 'package:flutter/material.dart';

class DefultScreen extends StatefulWidget {
  final List<Widget> children;
  const DefultScreen({super.key, required this.children});

  @override
  State<DefultScreen> createState() => _DefultScreenState();
}

class _DefultScreenState extends State<DefultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: widget.children,
        ),
      )),
    );
  }
}
