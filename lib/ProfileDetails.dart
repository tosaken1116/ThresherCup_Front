import 'dart:io';
import 'package:flutter/material.dart';
import 'SignupPage.dart';
import 'LoginPage.dart';
import 'ProfileExample.dart';
import 'dart:math';
import 'package:flutter/services.dart';


class ProfileDetails extends StatelessWidget {

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
      ClosePass(),
      TabGroup3(),
      BelongInput(),
      ActiveSpaceInput(),
      MessageInput(),
      InputFinishButton(),
      Spacer(),
    ]
            ),
        ),
      ),
    );
   }
}

class TabGroup3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
         Container(
              width: 200,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                  ),
                  Container(width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),),
                  Container(
                    width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF00FFEF),
                        )
                  ),
                ],
              ),
            ),

      ]
    );
  }
  
}

class BelongInput extends StatelessWidget {
  const BelongInput({Key? key}) : super(key: key); 

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
              labelText: '所属',
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

class ActiveSpaceInput extends StatelessWidget {
  const ActiveSpaceInput({Key? key}) : super(key: key); 

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
              labelText: '活動圏',
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

class MessageInput extends StatelessWidget {
  const MessageInput({Key? key}) : super(key: key); 

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
              labelText: 'Message',
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}



class InputFinishButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
