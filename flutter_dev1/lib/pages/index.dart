import 'package:flutter/material.dart';
import '../components/searchList.dart';

import '../common/eventBus.dart';

//父组件文本框的搜索组件
class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  var word = "请输入您要搜索的内容";

  //回调方法
  void setData(val){
    setState(() {
      word = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          //文本框组件
          TextField(
            autofocus: false,
            decoration: InputDecoration(
              labelText: word,
              prefixIcon: Icon(Icons.search),
            ),
            //当获取
            onTap: (){
              //bus.$emit();
              eventBus.fire(new TransEvent(false));
            },
          ),
          //ListView报错 Column
          SearchPage(visible: true,callback: (value)=>setData(value)),
          
        ],
      ),
    );
  }
}