import 'package:flutter/material.dart';

enum TextType { title, body, link }

class Texts extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;
  final TextType type;

  const Texts(
      {super.key, required this.text, this.textAlign, required this.type});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: textAlign,
      style: getTextStyle(),
    );
  }

  TextStyle getTextStyle() {
    switch (type) {
      case TextType.title:
        return const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        );
      case TextType.body:
        return const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.normal,
          color: Colors.grey,
        );
      case TextType.link:
        return const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        );
    }
  }
}
