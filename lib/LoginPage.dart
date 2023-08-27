import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              WelcomeText(),
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 32),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'C',
                      style: TextStyle(
                        color: Color(0xFF00FFF0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'lose',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'P',
                      style: TextStyle(
                        color: Color(0xFFE395FF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'ass',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              SignInButton(
                buttonType: ButtonType.google,
                onPressed: () {
                  print('click');
                },
              ),
              SizedBox(height: 10),
              SignInButton(
                buttonType: ButtonType.apple,
                onPressed: () {
                  print('click');
                },
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 220,
          height: 40,
          child: Text(
            'Welcome to',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 25,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
        ),
      ],
    );
  }
}
