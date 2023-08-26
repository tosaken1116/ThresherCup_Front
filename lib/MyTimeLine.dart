import 'package:flutter/material.dart';
import 'MyAccount.dart';
import 'SignupPage.dart';
import 'LoginPage.dart';
import 'DMPage.dart';
import 'UserAllPage.dart';

class MyTimeLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/sixth': (context) => DMPage(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ClosePass'),
          centerTitle: false,
          leading: IconButton(
            icon: Icon(Icons.help),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DMPage(),
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              activeIcon: Icon(Icons.account_circle),
              label: 'Users',
              tooltip: "This is Users",
              backgroundColor: Color.fromARGB(255, 231, 183, 255),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              activeIcon: Icon(Icons.favorite_border),
              label: 'Favorite',
              tooltip: "This is Favorite",
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              activeIcon: Icon(Icons.question_answer),
              label: 'TimeLine',
              tooltip: "This is Chat",
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts),
              activeIcon: Icon(Icons.manage_accounts),
              label: 'Settings',
              tooltip: "This is a Settings Page",
              backgroundColor: Colors.pink,
            ),
          ],

          type: BottomNavigationBarType.shifting,
          // ここで色を設定していても、shiftingにしているので
          // Itemの方のbackgroundColorが勝ちます。
          backgroundColor: Colors.red,
          enableFeedback: true,
          // IconTheme系統の値が優先されます。
          iconSize: 18,
          selectedFontSize: 20,
          selectedIconTheme: const IconThemeData(
              size: 30, color: Color.fromARGB(255, 52, 52, 52)),
          selectedItemColor: Colors.black,
          unselectedFontSize: 15,
          unselectedIconTheme: const IconThemeData(
              size: 25, color: Color.fromARGB(255, 70, 70, 70)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FavoritUserText(),
            ],
          ),
        ),
      ),
    );
  }
}

enum TimeLine { mypost, otherpost }

class TimeLineChoice extends StatefulWidget {
  const TimeLineChoice({Key? key}) : super(key: key);

  @override
  _TimeLineChoiceState createState() => _TimeLineChoiceState();
}

class _TimeLineChoiceState extends State<TimeLineChoice> {
  TimeLine timelineView = TimeLine.mypost;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<TimeLine>(
      segments: const <ButtonSegment<TimeLine>>[
        ButtonSegment<TimeLine>(
          value: TimeLine.mypost,
          label: Text('自分の投稿'),
        ),
        ButtonSegment<TimeLine>(
          value: TimeLine.otherpost,
          label: Text('タイムライン'),
        ),
      ],
      selected: <TimeLine>{timelineView},
      onSelectionChanged: (Set<TimeLine> newSelection) {
        setState(() {
          timelineView = newSelection.first;
        });

        if (timelineView == TimeLine.mypost) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return MyAccount();
            }),
          );
        } else if (timelineView == TimeLine.otherpost) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return UserAllPage();
          }));
        }
      },
    );
  }
}

class FavoritUserText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 220,
          height: 40,
          child: Text(
            'お気に入りのユーザー',
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
