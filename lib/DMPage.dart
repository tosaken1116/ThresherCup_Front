import 'package:flutter/material.dart';
import 'SignupPage.dart';
import 'LoginPage.dart';
import 'UserAllPage.dart';

class Post {
  final String author;
  final String content;
  final DateTime timestamp;

  Post({required this.author, required this.content, required this.timestamp});
}

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  TextEditingController _postController = TextEditingController();
  List<Post> _posts = [];

  void _submitPost() {
    String postText = _postController.text;
    if (postText.isNotEmpty) {
      Post newPost = Post(
        author: "あ", // ここを投稿者の名前に変更
        content: postText,
        timestamp: DateTime.now(),
      );
      setState(() {
        _posts.add(newPost);
      });
      _postController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: _postController,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: '投稿を入力してください',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: _submitPost,
          child: Text('投稿する'),
        ),
      ],
    );
  }
}

class DMPage extends StatelessWidget {
  TextEditingController _dmPostController = TextEditingController();

  void _submitDMPost() {
    String dmPostText = _dmPostController.text;
    print('Submitted DM post: $dmPostText');
    _dmPostController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/fifth': (context) => UserAllPage(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ClosePass'),
          centerTitle: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserAllPage(),
                ),
              );
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HelpText(),
              PostPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class HelpText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 220,
          height: 40,
          child: Text(
            'お困りの際はご相談ください。',
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
