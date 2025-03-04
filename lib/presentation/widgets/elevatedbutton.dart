import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String? buttonText;
  final VoidCallback onPressed;
  final double buttonpadding;
    final double buttonpaddingbottom;


  const Button(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      required this.buttonpadding,
      required this.buttonpaddingbottom});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: widget.buttonpadding, bottom: widget.buttonpaddingbottom),
      child: ElevatedButton(
        style:const ButtonStyle(
            shape: WidgetStatePropertyAll(BeveledRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(5),
            ))),
            backgroundColor: WidgetStatePropertyAll(Colors.blue),
            padding:
                WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 13))),
        onPressed: widget.onPressed,
        child: Center(
          child: Text(
            widget.buttonText!,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
