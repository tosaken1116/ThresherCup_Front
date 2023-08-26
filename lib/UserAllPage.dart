import 'package:flutter/material.dart';
import 'SignupPage.dart';
import 'LoginPage.dart';
import 'DMPage.dart';

class UserAllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      routes: {
    '/sixth': (context) => DMPage(), 
  },
      home: Scaffold(
        appBar: AppBar(title: const Text('ClosePass'),centerTitle: false,
        leading: IconButton(icon:Icon(Icons.help),
        onPressed: () { 
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DMPage(), 
              ),
            );
          },),),
        body: Center(
          child: Column( 
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      PageChoice(),
      SuggestText(),
      ScrollUsers(),
      ScrollUsers(),
      ScrollUsers(),
      NavigationBar(),
     
    ],
  ),
        ),
      ),
          );
}
}

enum  Page{ mypage, otheruser }

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
                  MaterialPageRoute(
                    builder: (context) {
                      return UserAllPage();
                    }
                  ),
          );
        } else if (pageView == Page.otheruser) {
          Navigator.push(
            context,
                  MaterialPageRoute(
                    builder: (context) {
                      return UserAllPage();
                    }
                  )
          );
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
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
       crossAxisAlignment: CrossAxisAlignment.start,
      children:[

       CircleAvatar(
               backgroundImage:
                  NetworkImage('https://cat-fact.herokuapp.com/facts'),
             ),
      SizedBox(width: 8),
      Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
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

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [

        Container(
          width: 370,
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 12, bottom: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 64,
                              height: 32,
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                           children: [
                        IconButton(
                onPressed: () {},
               icon: Icon(Icons.account_circle),
               ),
                     Text(
                          'User',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF1D1B20),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 1.33,
                            letterSpacing: 0.50,
                          ),
                        ),
                           ],
                      ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 12, bottom: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 32,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 64,
                              height: 32,
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    padding: const EdgeInsets.all(6),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                           children: [
                        IconButton(
                onPressed: () {},
               icon: Icon(Icons.favorite_border),
               ),
                       Text(
                          'Favorit',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF49454F),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            height: 1.33,
                            letterSpacing: 0.50,
                          ),
                        ),
                           ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 12, bottom: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 32,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 64,
                              height: 32,
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    padding: const EdgeInsets.all(6),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                           children: [
                        IconButton(
                onPressed: () {},
               icon: Icon(Icons.question_answer),
               ),
                       Text(
                          'talk',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF49454F),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            height: 1.33,
                            letterSpacing: 0.50,
                          ),
                        ),
                           ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 12, bottom: 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 32,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 64,
                              height: 32,
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                           
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                           children: [
                        IconButton(
                onPressed: () {},
               icon: Icon(Icons.manage_accounts),
               ),
                        Text(
                          

                          'Setting',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF49454F),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            height: 1.33,
                            letterSpacing: 0.50,
                          ),
                          ),
                           ],
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
    );
  }
}




