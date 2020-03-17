import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../common/eventBus.dart';


class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
 
  String word = "输入你要搜索的内容";

  void setData(val){
    setState(() {
      word = val;
    });
  }

  //
  
  @override
  void initState() {
    //FocusScope.of(context).requestFocus(FocusNode());
    //eventBus.on<TransEvent1>().listen((TransEvent1 data) => setData(data.text));
    super.initState();
    
  }
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
       child: Column(children: <Widget>[
         //搜索框
         TextField(
            autofocus: false,
            decoration: InputDecoration(
              labelText: word,
              prefixIcon: Icon(Icons.search),
            ),
            onTap: (){
              eventBus.fire(new TransEvent(false));
            },
            onSubmitted: (val){

            },
            onChanged: (val){

            },
            
         ),
         Padding(padding: EdgeInsets.only(top: 30)),
         //列表数据
         SearchList(visible:true,callback: (val)=>setData(val)),
       ],),
    );
  }
}

//列表数据拆分组件

class SearchList extends StatefulWidget {
  SearchList({Key key, this.visible,this.callback}) : super(key: key);

  final bool visible;
  final callback;

  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  var isShow;

  void show(val){
    setState(() {
      isShow = val;
    });
  }
  @override
  void initState() { 
    isShow = widget.visible;

    eventBus.on<TransEvent>().listen((TransEvent data) => show(data.text));
    super.initState();
    
  }
  Widget build(BuildContext context) {
    //渲染动态列表
    List<Widget> sItem = new List();

    var names = ['熊大','熊二','熊三','老弟你好'];
    //组件list
    for(var i = 0 ;i<names.length;i++){
      sItem.add(
        GestureDetector(
            onTap: (){
              setState(() {
                isShow = true;
              });
              widget.callback(names[i]);
              //eventBus.fire(new TransEvent1(names[i]));
            },
            child: ListTile(title: Text(names[i]),),
        )
        
      );
    }
    //生成带下划线的效果
    var  divideListItem  = ListTile.divideTiles(tiles: sItem,color:Colors.green).toList();
    return Expanded(
           child: Offstage(
             offstage: isShow,
             child: ListView(
             children: divideListItem,
             )
           )
           
    );
  }
}