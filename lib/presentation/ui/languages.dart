import 'package:flutter/material.dart';
import 'package:signupweek2/presentation/widgets/elevatedbutton.dart';
import 'package:signupweek2/presentation/widgets/defult_screen.dart';
import 'package:signupweek2/presentation/widgets/texts.dart';
import 'package:signupweek2/presentation/widgets/gesturedetector.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({super.key});

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  String selectedLanguage = 'english';
  @override
  Widget build(BuildContext context) {
    return DefultScreen(
      children: [
        const Center(
          child: Texts(
            text: 'Choose your lalnguage',
            type: TextType.title,
          ),
        ),
        Gesturedetectorr(
          isPressed: selectedLanguage == 'English',
          onTap: () {
            setState(() {
              selectedLanguage = 'English';
            });
          },
          child: langlist(title: 'English', leading: '🇺🇸'),
        ),
        Gesturedetectorr(
          onTap: () {
            setState(() {
              selectedLanguage = 'العربية';
            });
          },
          isPressed: selectedLanguage == 'العربية',
          child: langlist(title: 'العربية', leading: '🇪🇬'),
        ),
        const Texts(
          text: 'you can change it later from settings',
          type: TextType.body,
        ),
        Button(
            buttonText: 'continue',
            buttonpadding: 60,
            buttonpaddingbottom: 10,
            onPressed: () {
              Navigator.of(context).pushNamed('role');
            })
      ],
    );
  }
}

Widget langlist({required String? title, required String? leading}) {
  return ListTile(
    leading: Text(
      leading!,
      style: const TextStyle(fontSize: 15),
    ),
    title: Text(
      title!,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}
