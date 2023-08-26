import 'package:flutter/material.dart';
import 'SettingProfile.dart';
import 'Favorit.dart';
import 'MyTimeLine.dart';
import 'SignupPage.dart';
import 'LoginPage.dart';
import 'DMPage.dart';
import 'MyAccount.dart';
import 'UserAllPage.dart';

void main() => runApp(const SettingProfile());

class SettingProfile extends StatefulWidget {
  const SettingProfile({Key? key}) : super(key: key);

  @override
  State<SettingProfile> createState() => _SettingProfileState();
}

class _SettingProfileState extends State<SettingProfile> {
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
              EditProfileText(),
            ],
          ),
        ),
      ),
    );
  }
}

class EditProfileText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 220,
          height: 40,
          child: Text(
            'プロフィールを編集します',
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
