import 'package:flutter/material.dart';
import 'SignupPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('')),
        body: Center(
          child: Column(
            children: [
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
              SingleChoice(),
              SizedBox(height: 20),
              UserNameInput(),
              PasswordInput(),
              Button(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

enum Enter { login, signup }

class SingleChoice extends StatefulWidget {
  const SingleChoice({Key? key}) : super(key: key); 

  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  Enter enterView = Enter.login;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Enter>(
      segments: const <ButtonSegment<Enter>>[
        ButtonSegment<Enter>(
          value: Enter.login,
          label: Text('ログイン'),
        ),
        ButtonSegment<Enter>(
          value: Enter.signup,
          label: Text('新規登録'),
        ),
      ],
      selected: <Enter>{enterView},
      onSelectionChanged: (Set<Enter> newSelection) {
        setState(() {
          enterView = newSelection.first;
        });

        if (enterView == Enter.login) {
          Navigator.push(
            context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    }
                  ),
          );
        } else if (enterView == Enter.signup) {
          Navigator.push(
            context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignupPage();
                    }
                  )
          );
        }
      },
    );
  }
}


class UserNameInput extends StatelessWidget {
  const UserNameInput({Key? key}) : super(key: key); // Added 'Key?' parameter

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 250,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'UserName',
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key); // Added 'Key?' parameter

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 250,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 203,
          height: 40,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFF00FFEF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // The 'NextButton' widget seems to be missing or not defined in this code snippet.
                      // If it's a custom widget, you need to import and use it here.
                      Text(
                        'Next',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                          letterSpacing: 0.10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
