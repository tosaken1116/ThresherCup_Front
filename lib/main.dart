import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'SignupPage.dart';
import 'SignupIconFile.dart';
import 'ProfileExample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/first': (context) => SignupPage(),
        '/second': (context) => ProfileExample(),
        '/third': (context) => ImagePickerWidget(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}