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
        width: double.infinity,
        height: 300,
        // color: Colors.pink,
        //背景
        decoration: BoxDecoration(
          color: Colors.brown,
          image: DecorationImage(
            image: NetworkImage("https://bkimg.cdn.bcebos.com/pic/03087bf40ad162d99377e2451edfa9ec8b13cdca?x-bce-process=image/resize,m_lfit,w_268,limit_1/format,f_jpg")
          )
        ),
        child: Image.network("https://bkimg.cdn.bcebos.com/pic/03087bf40ad162d99377e2451edfa9ec8b13cdca?x-bce-process=image/resize,m_lfit,w_268,limit_1/format,f_jpg",fit: BoxFit.fill),
      ),
    );
  }
}
