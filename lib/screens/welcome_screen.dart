import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:flutter/material.dart';

import '../components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const String id = "welcome_screen";

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: "Devist3",
              child: SizedBox(
                child: Image.asset("images/Devist3.png"),
                height: 90.0,
              ),
            ),
            Center(
              child: const Text(
                "Chat App",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 131, 162, 239)),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              color: Color.fromARGB(255, 131, 162, 239),
              title: "Log In",
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
            RoundedButton(
              color: Color.fromARGB(255, 74, 101, 231),
              title: "Register",
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
