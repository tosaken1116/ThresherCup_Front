import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'SignupIconFile.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      routes: {
    '/Second': (context) => ImagePickerWidget(), 
  },
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
            MailAdressInput(),
            PasswordInput(),
            PasswordCheckInput(),
            NextButton(),
            Spacer(),
          ],
        )
        ),
      ),
    );
  }
}

enum Enter { login, signup }

class SingleChoice extends StatefulWidget {
  const SingleChoice({Key? key}) : super(key: key); // Added 'Key?' parameter

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
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        } else if (enterView == Enter.signup) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignupPage()), 
          );
        }
      },
    );
  }
}

class UserNameInput extends StatelessWidget {
  const UserNameInput({Key? key}) : super(key: key);

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

class MailAdressInput extends StatelessWidget {
  const MailAdressInput({Key? key}) : super(key: key); // Added 'Key?' parameter

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
              labelText: 'mail-adress',
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
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

class PasswordCheckInput extends StatelessWidget {
  const PasswordCheckInput({Key? key}) : super(key: key); // Added 'Key?' parameter

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
    SizedBox(
      width: 250,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password確認',
        ),
      ),
    ),
    SizedBox(height: 16),
      ],
    );
  }
  
}


class NextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/Second'); // ページ遷移の処理を追加
      },
    child: Column(
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
                color: Color(0xFFE395FF),
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
                    children:<Widget>[
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
    ),
    );
  }
}
