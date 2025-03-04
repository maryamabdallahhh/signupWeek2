import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signupweek2/presentation/ui/create_your_account.dart';
import 'package:signupweek2/presentation/ui/role.dart';
import 'package:signupweek2/presentation/ui/languages.dart';
import 'package:signupweek2/presentation/ui/sign_up.dart';
import 'package:signupweek2/presentation/ui/verify_identity.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'role': (context) => const Role(),
        'account': (context) => const CreateYourAccount(),
        'verify': (context) => const VerifyIdentity(),
        'signup': (context) => const SignUp(),
      },
      home: const ChooseLanguage(),
    );
  }
}
