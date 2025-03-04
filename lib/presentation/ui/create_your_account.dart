import 'package:flutter/material.dart';
import 'package:signupweek2/presentation/widgets/defult_screen.dart';
import 'package:signupweek2/presentation/widgets/elevatedbutton.dart';
import 'package:signupweek2/presentation/widgets/logo.dart';
import 'package:signupweek2/presentation/widgets/textform.dart';
import 'package:signupweek2/presentation/widgets/texts.dart';

class CreateYourAccount extends StatefulWidget {
  const CreateYourAccount({super.key});

  @override
  State<CreateYourAccount> createState() => _CreateYourAccountState();
}

class _CreateYourAccountState extends State<CreateYourAccount> {
  final fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefultScreen(
      children: [
        const Logo(),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Texts(text: 'Create Your Account', type: TextType.title),
              Texts(
                  text: 'join the communtiy of designers', type: TextType.body),
              Texts(text: 'and clients', type: TextType.body),
            ],
          ),
        ),
        Form(
          key: fromkey,
          child: const Textform(
            keybordType: TextInputType.number,
            label: 'Phone number',
            prfix: Icon(
              Icons.phone,
              color: Colors.grey,
            ),
          ),
        ),
        Button(
          buttonText: 'Send OTP',
          onPressed: () {
            if (fromkey.currentState!.validate()) {}
            Navigator.of(context).pushNamed('verify');
          },
          buttonpadding: 50,
          buttonpaddingbottom: 8,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Texts(text: 'Already have an account?', type: TextType.body),
            Texts(text: 'Log in', type: TextType.link)
          ],
        )
      ],
    );
  }
}
