import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signupweek2/presentation/widgets/defult_screen.dart';
import 'package:signupweek2/presentation/widgets/elevatedbutton.dart';
import 'package:signupweek2/presentation/widgets/texts.dart';

class VerifyIdentity extends StatefulWidget {
  const VerifyIdentity({super.key});

  @override
  State<VerifyIdentity> createState() => _VerifyIdentityState();
}

class _VerifyIdentityState extends State<VerifyIdentity> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return DefultScreen(
      children: [
        const Center(
            child: Texts(text: 'Verify Identity', type: TextType.title)),
        const Texts(
            text: 'Enter the 4-digit code sent to your phone',
            type: TextType.body),
        const Texts(text: 'number', type: TextType.body),
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 10),
          child: Form(
              key: formkey,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Digit(),
                      Digit(),
                      Digit(),
                      Digit(),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Texts(
                          text: 'Didn\'t receive the code?',
                          type: TextType.body),
                      Texts(text: 'Resend', type: TextType.link)
                    ],
                  ),
                  Button(
                      buttonText: 'Verfiy',
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          Navigator.of(context).pushNamed('signup');
                        }
                      },
                      buttonpadding: 50,
                      buttonpaddingbottom: 1)
                ],
              )),
        ),
      ],
    );
  }
}

class Digit extends StatelessWidget {
  const Digit({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      width: 64,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'please enter a val';
          }
          return null;
        },
        decoration: const InputDecoration(border: OutlineInputBorder()),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
