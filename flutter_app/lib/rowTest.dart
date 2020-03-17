import 'package:flutter/material.dart';

// 定义入口函数
void main() => runApp(MyApp());

// 创建一个自定组件

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //脚手架内容scoff内容
        home: HomePage()
    );
    }
}

//创建自定义组件
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //头信息
      appBar: AppBar(
        title: Text("图片组件的使用"),
      ),
      //内容信息
      body: Container(
        // child: Icon(Icons.search,size:50,color: Colors.red, ),

        // child: IconButton(
        //   color: Colors.yellow,
        //   icon: Icon(Icons.home),
        //   iconSize: 50,
        // )
        height: double.infinity,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 80,
              height: 80,
              color: Colors.red
            ),
             Container(
              width: 80,
              height: 80,
              color: Colors.yellow
            ),
             Container(
              width: 80,
              height: 80,
              color: Colors.green
            ),
          ],
        ),
      )
    );
  }
}
