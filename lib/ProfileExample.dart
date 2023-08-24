import 'package:flutter/material.dart';
import 'SignupPage.dart';
import 'LoginPage.dart';

class ProfileExample extends StatelessWidget {
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
      SingleChoice(),
      TabGroup(),
      SuggestText(),
      ProfileCard(),
      SizedBox(height: 20), 
      ToIconButton(),
      Spacer(),
    ],
  ),
        ),
        
          ),
        );
  }
}

class TabGroup extends StatelessWidget {
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
                          color: Color(0xFF00FFEF),
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
                          color: Colors.grey,
                        )
                  ),
                ],
              ),
            ),

      ]
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
            'プロフィールカードを作成します',
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

class ProfileCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.only(
                right: 20,
                left: 20, 
              ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.account_circle,size: 50.0,color: Colors.blue,),
              title: Text('ユーザーネーム'),
            ),
            SizedBox(height: 10), 
           Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('所属       : ',style: TextStyle(
                    fontSize: 20,
                  ),),
                Text('↑↑所属を記入します（例：九州工業大学）',style: TextStyle(
                    fontSize: 10,
                  ),),
                Text('活動圏     : ',style: TextStyle(
                    fontSize: 20,
                  ),),
                Text('↑↑普段活動している場所を記入します（例:mastodon(C3サーバ)）',style: TextStyle(
                    fontSize: 10,
                  ),),
                Text('メッセージ  : ',style: TextStyle(
                    fontSize: 20,
                  ),),
                Text('↑↑１００字以内でメッセージを記入します(例:わーーーい)',style: TextStyle(
                    fontSize: 10,
                  ),),
                  SizedBox(height: 20), 
              ],
            ),
          ],
        ),
      ),
    );
  }
}



class ToIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/third');
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
