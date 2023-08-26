import 'package:flutter/material.dart';
import 'SettingProfile.dart';
import 'Favorit.dart';
import 'MyTimeLine.dart';
import 'SignupPage.dart';
import 'LoginPage.dart';
import 'DMPage.dart';
import 'UserAllPage.dart';
import 'MyAccount.dart';

void main() => runApp(const Favorit());

class Favorit extends StatefulWidget {
  const Favorit({Key? key}) : super(key: key);

  @override
  State<Favorit> createState() => _FavoritState();
}

class _FavoritState extends State<Favorit> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 1) {
      // Index 1 corresponds to "Favorite"
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return Favorit(); // Navigate to the FavoritePage
        }),
      );
    } else if (index == 2) {
      // Index 1 corresponds to "Favorite"
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return MyTimeLine(); // Navigate to the FavoritePage
        }),
      );
    } else if (index == 3) {
      // Index 1 corresponds to "Favorite"
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return SettingProfile(); // Navigate to the FavoritePage
        }),
      );
    } else if (index == 0) {
      // Index 1 corresponds to "Favorite"
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return UserAllPage(); // Navigate to the FavoritePage
        }),
      );
    }
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
          selectedItemColor: Color.fromARGB(255, 3, 0, 26),
          onTap: _onItemTapped,
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.red,
          enableFeedback: true,
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
              FavoritUserText(),
            ],
          ),
        ),
      ),
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
