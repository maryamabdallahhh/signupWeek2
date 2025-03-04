import 'package:flutter/material.dart';

class Gesturedetectorr extends StatefulWidget {
  final double? containerWidth;
  final double? containerheight;
  final Widget child;
  final bool? isPressed;
  final VoidCallback? onTap;

  const Gesturedetectorr(
      {super.key,
      this.containerWidth,
      this.containerheight,
      required this.child,
      this.isPressed,
      this.onTap});

  @override
  State<Gesturedetectorr> createState() => _GesturedetectorState();
}

class _GesturedetectorState extends State<Gesturedetectorr> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Container(
        width: widget.containerWidth,
        height: widget.containerheight,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
              color: widget.isPressed! ? Colors.blue : Colors.transparent),
        ),
        child: GestureDetector(
          onTap: widget.onTap,
          child: widget.child,
        ),
      ),
    );
  }
}
