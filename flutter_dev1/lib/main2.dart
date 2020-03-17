import 'package:flutter/material.dart';

import './common/eventBus.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BodyPage()
    );
  }
}


//home单独领出来一个组件
class BodyPage extends StatefulWidget {
  BodyPage({Key key}) : super(key: key);

  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  var _index = 0;
  var pageList = [
    IndexPage(),
    IndexPage1(),
    CartPage(),
    IndexPage()
  ];

  void onChanged(val){
    setState(() {
      this._index = val;
    });
  }

  void show(val){
    setState(() {
      this._index = int.parse(val);
    });
  }

  @override
  void initState() { 
    super.initState();

    //listen监听消息
    eventBus.on<TransEvent>().listen((TransEvent data) => show(data.text));
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("京东商城"),),

        body:this.pageList[_index],
        //底部
        bottomNavigationBar: TabBar(tabIndex: this._index,callback: (val)=>onChanged(val)),

        floatingActionButton: FloatingActionButton(onPressed:(){} ,child:Text("$_index")),
    );
  }
}

class TabBar extends StatefulWidget {
  TabBar({Key key, this.tabIndex,this.callback}) : super(key: key);

  var tabIndex;

  final callback;


  @override
  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> {
  var _index = 0;
  
  @override
  void initState() { 
    _index = widget.tabIndex;
    super.initState();
    
  }
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          onTap: (index){
            setState(()=>{
              this._index = index
            });

            //widget.callback(_index);

            //监听
            eventBus.fire(new TransEvent('$_index'));
          },
          currentIndex: _index,
          backgroundColor: Color(0xFFF0F0F0),
          fixedColor: Color(0xFFA00000),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(title: Text("首页"), icon:Icon(Icons.home)),
            BottomNavigationBarItem(title: Text("分类"), icon:Icon(Icons.category)),
            BottomNavigationBarItem(title: Text("购物车"), icon:Icon(Icons.card_travel)),
            BottomNavigationBarItem(title: Text("我的"), icon:Icon(Icons.people)),
          ]
        );
  }
}



class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("hello world"),
    );
  }
}

class IndexPage1 extends StatefulWidget {
  IndexPage1({Key key}) : super(key: key);

  @override
  _IndexPage1State createState() => _IndexPage1State();
}

class _IndexPage1State extends State<IndexPage1> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("hello category"),
    );
  }
}

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("hello Cart"),
    );
  }
}