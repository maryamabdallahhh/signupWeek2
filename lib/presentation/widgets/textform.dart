import 'package:flutter/material.dart';

class Textform extends StatelessWidget {
  final TextInputType keybordType;
  final String label;
  final Widget? prfix;
  final Widget? suffix;
   const Textform(
      {super.key,
      required this.keybordType,
      required this.label,
       this.prfix,
      this.suffix});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
         validator: (value) {
          if (value!.isEmpty) {
            return 'please enter a value';
          }
          return null;
        },
        keyboardType: keybordType,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          //enabledBorder: const OutlineInputBorder(),
          labelText: label,
          labelStyle: const TextStyle(color: Colors.grey),
          prefixIcon: prfix,
          suffixIcon: suffix,
        ),
      ),
    );
  }
}
