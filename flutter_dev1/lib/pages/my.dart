import 'package:flutter/material.dart';

void main() => runApp(MyPage());

class MyPage extends StatelessWidget {
  const MyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "欢迎来到我的Style",
          style: TextStyle(
            color: Colors.pink,
            fontSize: 25
          ),
        ),
        ),
    );
  }
}