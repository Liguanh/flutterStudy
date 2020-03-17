import 'package:flutter/material.dart';
import 'package:flutter_dev1/components/tabBar.dart';
import 'package:flutter_dev1/pages/search.dart';
import '../pages/index.dart';
import 'package:flutter_dev1/pages/cart.dart';
import 'package:flutter_dev1/pages/category.dart';
import 'package:flutter_dev1/pages/my.dart';

class BodyPage extends StatefulWidget {
  BodyPage({Key key}) : super(key: key);

  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  var _index = 0;

  var pList = [
    //
    IndexPage(),
    SearchPage(),
    //CategoryPage(),
    CartPage(),
    MyPage()
  ];

  //定义方法show
  void show(val){
    setState(() {
      this._index = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("全栈商城"),),
      body: pList[_index],
      bottomNavigationBar: BottomBar(tabIndex:_index,callback: (val)=>show(val)),
      floatingActionButton: FloatingActionButton(onPressed: (){},child:Center(child: Text('$_index'),)),
    );
  }
}