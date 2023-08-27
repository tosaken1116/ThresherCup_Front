import 'package:flutter/material.dart';
import 'SettingProfile.dart';
import 'LoginPage.dart';
import 'ProfileExample.dart';

class ReHomeSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/tenth': (context) => SettingProfile(),
      },
      home: Scaffold(
        appBar: AppBar(title: const Text(''), actions: [
          IconButton(
            icon: Icon(Icons.contact_support),
            onPressed: () => {},
          ),
        ]),
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
            EditHomeLocationText(),
            SizedBox(height: 20),
            HomeInput(),
            RangeInput(),
            HomeSetButton(),
            Spacer(),
          ],
        )),
      ),
    );
  }
}

class EditHomeLocationText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 250,
          height: 40,
          child: Text(
            '自宅の位置情報を編集します',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
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

class HomeInput extends StatelessWidget {
  const HomeInput({Key? key}) : super(key: key);

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
              labelText: '自宅位置',
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

class RangeInput extends StatelessWidget {
  const RangeInput({Key? key}) : super(key: key);

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
              labelText: 'すれ違いたくない範囲',
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

class HomeSetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/tenth');
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '自宅情報を更新します',
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
