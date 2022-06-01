import 'package:flutter/material.dart';
import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/constants.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = "registration_screen";
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: "Devist3",
              child: SizedBox(
                height: 200.0,
                child: Image.asset('images/Devist3.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: "Enter your Email"),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: "Enter your Password")),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              color: Color.fromARGB(255, 74, 101, 231),
              title: "Register",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
