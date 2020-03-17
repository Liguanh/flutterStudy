//引入ui库
import 'package:flutter/material.dart';

//引入购物车，首页，分类，我的
import './pages/cart.dart';
import './pages/index.dart';
import './pages/category.dart';
import './pages/my.dart';

//入口函数写入入口页面
// void main(){
//   runApp(myApp());
// }

void main() => runApp(MyApp());

//myApp组件为项目启动组件
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Material设计风格内容
    return MaterialApp(
      //material基本结构布局结构，提供常见的Api
      home: HomePage()//调用home动态组件，方便操作
      );
  }
}

//HomePage动态组件，可点击底部完成页面的切换
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //定义要切换的下标值
  var _index = 0;
  //定义一个组件数组，方便切换
  var pagesList = [
    IndexPage(),
    CategoryPage(),
    CartPage(),
    MyPage()
  ];
  @override
  Widget build(BuildContext context) {

    //定义scaffold脚手架组件
    return Scaffold(
        //头部标题
        appBar: AppBar(title: Text("jdshop")),
        //中间页面内容
        body: pagesList[_index],
        // 底部tabbar
        bottomNavigationBar: BottomNavigationBar(
          //点击设置状态下标
          onTap: (index){
            setState(() {
              this._index = index;
            });
          },
          //当前选中颜色
          fixedColor: Colors.red,
          currentIndex: this._index,//当前下标
          type: BottomNavigationBarType.fixed,//设置tabbar的个数
          items: [
            BottomNavigationBarItem(title: Text("首页"),icon: Icon(Icons.home)),
            BottomNavigationBarItem(title: Text("分类"),icon: Icon(Icons.category)),
            BottomNavigationBarItem(title: Text("购物车"),icon: Icon(Icons.shopping_cart)),
            BottomNavigationBarItem(title: Text("我的"),icon: Icon(Icons.people)),
          ],
        )

      );
  }
}


