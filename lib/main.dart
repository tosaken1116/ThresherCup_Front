import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'SignupPage.dart';
import 'ProfileExample.dart';
import 'ProfileDetails.dart';
import 'Profile.dart';
import 'UserAllPage.dart';
import 'HomeSetting.dart';
import 'DMPage.dart';
import 'MyAccount.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClosePass',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/first': (context) => SignupPage(),
        '/homesetting': (context) => HomeSetting(),
        '/second': (context) => ProfileExample(),
        '/third': (context) => ProfileDetails(),
        '/fourth': (context) => Profile(),
        '/fifth': (context) => UserAllPage(),
        '/sixth': (context) => DMPage(),
        '/seventh': (context) => MyAccount(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
