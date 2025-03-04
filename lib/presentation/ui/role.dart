import 'package:flutter/material.dart';
import 'package:signupweek2/presentation/widgets/elevatedbutton.dart';
import 'package:signupweek2/presentation/widgets/defult_screen.dart';
import 'package:signupweek2/presentation/widgets/texts.dart';
import 'package:signupweek2/presentation/widgets/gesturedetector.dart';

class Role extends StatefulWidget {
  const Role({super.key});

  @override
  State<Role> createState() => _RoleState();
}

class _RoleState extends State<Role> {
  String selectedRole = 'Desinger';
  @override
  Widget build(BuildContext context) {
    return DefultScreen(
      children: [
        const Center(
          child: Column(
            children: [
              Texts(text: 'Choose Your Role', type: TextType.title),
              Texts(
                  text: 'Let Us Know how you\'ll be Using ',
                  type: TextType.body),
              Texts(text: 'the platform', type: TextType.body)
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Gesturedetectorr(
              isPressed: selectedRole == 'Desinger',
              onTap: () {
                setState(() {
                  selectedRole = 'Desinger';
                });
              },
              containerWidth: 146,
              containerheight: 160,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.design_services_outlined,
                    size: 80,
                  ),
                  Text(
                    'Desinger',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Gesturedetectorr(
              isPressed: selectedRole == 'Client',
              onTap: () {
                setState(() {
                  selectedRole = 'Client';
                });
              },
              containerWidth: 146,
              containerheight: 160,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_2_outlined,
                    size: 80,
                  ),
                  Text(
                    'Client',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
        Button(
          buttonText: 'continue',
          onPressed: () {
            Navigator.of(context).pushNamed('account');
          },
          buttonpadding: 50,
          buttonpaddingbottom: 10,
        )
      ],
    );
  }
}
