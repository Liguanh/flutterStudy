import 'package:flutter/material.dart';
import '../common/eventBus.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key, this.visible,this.callback}) : super(key: key);

  final bool visible;

  final callback;

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  //保存显示隐藏的状态
  var visible;
  
  void setVisible(val){
    setState(() {
      visible = val;
    });
  }
  
  @override
  void initState() { 
    // bus.$on()
    eventBus.on<TransEvent>().listen((TransEvent data) => setVisible(data.text));
    visible = widget.visible;
    
    //调用毁掉函数
    //widget.callback("张恒老师好帅");
    super.initState();
  }
  Widget build(BuildContext context) {
    
    //数据
    var names = ['熊大', '熊二','熊三','熊四'];
   //实例化空的像
   List<Widget> sItem = new List();

  //动态生成列表
  for(var i=0; i<names.length;i++){
     sItem.add( 
       //点击组件
       GestureDetector(
         onTap: (){
           setState(() {
             visible = true;
           });
           widget.callback(names[i]);
         },
         child: ListTile(title: Text(names[i]),)
       )
      );
  }

  var underline = ListTile.divideTiles(tiles: sItem,color: Colors.red).toList();
  return Expanded(
        child: Offstage(
          offstage: visible,
          child: ListView(
            children: underline,
          ),
          )
        
    );
  }
}