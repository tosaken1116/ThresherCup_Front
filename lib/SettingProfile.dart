import 'package:flutter/material.dart';
import 'SignupPage.dart';
import 'LoginPage.dart';
import 'DMPage.dart';
import 'MyAccount.dart';

void main() => runApp(const SettingProfile());

class SettingProfile extends StatefulWidget {
  const SettingProfile({Key? key}) : super(key: key);

  @override
  State<SettingProfile> createState() => _SettingProfileState();
}

class _SettingProfileState extends State<SettingProfile> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
              activeIcon: Icon(
                Icons.account_circle,
              ),
              label: 'Users',
              tooltip: "This is Users",
              backgroundColor: Color.fromARGB(255, 231, 183, 255),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              activeIcon: Icon(Icons.favorite_border),
              label: 'Favorite',
              tooltip: "This is Favorite",
              backgroundColor: Color.fromARGB(255, 141, 238, 255),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              activeIcon: Icon(Icons.question_answer),
              label: 'TimeLine',
              tooltip: "This is Chat",
              backgroundColor: Color.fromARGB(255, 240, 157, 255),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts),
              activeIcon: Icon(Icons.manage_accounts),
              label: 'Settings',
              tooltip: "This is a Settings Page",
              backgroundColor: Color.fromARGB(255, 108, 228, 255),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
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

          unselectedFontSize: 15,
          unselectedIconTheme: const IconThemeData(
              size: 25, color: Color.fromARGB(255, 70, 70, 70)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              PageChoice(),
              SuggestText(),
            ],
          ),
        ),
      ),
    );
  }
}

enum Page { mypage, otheruser }

class PageChoice extends StatefulWidget {
  const PageChoice({Key? key}) : super(key: key);

  @override
  State<PageChoice> createState() => _PageChoiceState();
}

class _PageChoiceState extends State<PageChoice> {
  Page pageView = Page.mypage;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Page>(
      segments: const <ButtonSegment<Page>>[
        ButtonSegment<Page>(
          value: Page.mypage,
          label: Text('マイアカウント'),
        ),
        ButtonSegment<Page>(
          value: Page.otheruser,
          label: Text('他のユーザー'),
        ),
      ],
      selected: <Page>{pageView},
      onSelectionChanged: (Set<Page> newSelection) {
        setState(() {
          pageView = newSelection.first;
        });

        if (pageView == Page.mypage) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return MyAccount();
            }),
          );
        } else if (pageView == Page.otheruser) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SettingProfile();
          }));
        }
      },
    );
  }
}

class SuggestText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 220,
          height: 40,
          child: Text(
            '２４時間以内にすれ違ったユーザー',
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

class ScrollUsers extends StatefulWidget {
  const ScrollUsers({Key? key}) : super(key: key);

  @override
  State<ScrollUsers> createState() => _ScrollUsersState();
}

class _ScrollUsersState extends State<ScrollUsers> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage:
                NetworkImage('https://cat-fact.herokuapp.com/facts'),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Sea10'),
                  SizedBox(width: 8),
                  Text('2022/05/05'),
                ],
              ),
              SizedBox(height: 4),
              Text('aaaaa'),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
