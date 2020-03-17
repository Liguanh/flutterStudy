import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key,this.tabIndex,this.callback}) : super(key: key);

  final int tabIndex;
  final callback;

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _tabIndex = 0;
  @override
  void initState() { 
    this._tabIndex = widget.tabIndex;
    super.initState();
    
  }
  Widget build(BuildContext context) {
    return BottomNavigationBar(
       onTap: (index){
         setState(() {
           this._tabIndex = index;
         });
         widget.callback(index);
       },
        type: BottomNavigationBarType.fixed,
        currentIndex: _tabIndex,
        items: [
            BottomNavigationBarItem(title: Text("首页"), icon:Icon(Icons.home)),
            BottomNavigationBarItem(title: Text("分类"), icon:Icon(Icons.category)),
            BottomNavigationBarItem(title: Text("购物车"), icon:Icon(Icons.card_travel)),
            BottomNavigationBarItem(title: Text("我的"), icon:Icon(Icons.people)),
        ]
      );
  }
}