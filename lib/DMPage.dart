import 'package:flutter/material.dart';
import 'SignupPage.dart';
import 'LoginPage.dart';
import 'UserAllPage.dart';


class DMPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      routes: {
    '/fifth': (context) => UserAllPage(), 
  },
      home: Scaffold(
        appBar: AppBar(title: const Text('ClosePass'),centerTitle: false,
        leading: IconButton(
          icon:Icon(Icons.arrow_back),onPressed: () { 
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserAllPage(), 
              ),
            );
          },),),
        body: Center(
          child: Column( 
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      HelpText(),     
    ],
  ),
        ),
        ),
      );
}
}

class HelpText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 220,
          height: 40,
          child: Text(
            'お困りの際はご相談ください。',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 2,
            ),
          ),
        ),
      ],
    );
  }
}

