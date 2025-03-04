import 'package:flutter/material.dart';
import 'package:signupweek2/presentation/widgets/defult_screen.dart';
import 'package:signupweek2/presentation/widgets/elevatedbutton.dart';
import 'package:signupweek2/presentation/widgets/logo.dart';
import 'package:signupweek2/presentation/widgets/textform.dart';
import 'package:signupweek2/presentation/widgets/texts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formkey = GlobalKey<FormState>();
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
          key: formkey,
          child: Column(
            children: [
              const Textform(
                keybordType: TextInputType.text,
                label: 'name',
                prfix: Icon(Icons.person_2_outlined),
              ),
              const Paswordfeild(label: 'password'),
              const Paswordfeild(label: 'Confirm password'),
              Button(
                  buttonText: 'Create Account',
                  onPressed: () {
                    formkey.currentState!.validate();
                  },
                  buttonpadding: 30,
                  buttonpaddingbottom: 8),
            ],
          ),
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

class Paswordfeild extends StatefulWidget {
  final String? label;
  const Paswordfeild({super.key, required this.label});

  @override
  State<Paswordfeild> createState() => _PaswordfeildState();
}

class _PaswordfeildState extends State<Paswordfeild> {
  bool isObscure = true;
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
        obscureText: isObscure,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          label: Text(widget.label!),
          suffixIcon: IconButton(
            padding: const EdgeInsets.all(8),
            onPressed: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
            icon: isObscure
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
          ),
        ),
      ),
    );
  }
}
