//引入ui库
import 'package:flutter/material.dart';

//
import 'swiper.dart';

//首页主页面内容
class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  
  @override
  Widget build(BuildContext context) {
    //盒子组件
    return Container(
      width: double.infinity,
      // rheight: double.infinity,
      //列组件
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: SwiperBanner()
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 0, 15),
            padding: EdgeInsets.fromLTRB(10, 2, 0,2),
            width: double.infinity,
            //盒子装饰器
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width:4,color:Colors.red)
                )
            ),
            child: Text('猜你喜欢'),
          ),
          Container(
            width: double.infinity,
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                 Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: ListView(children: <Widget>[
                    Image.asset("images/banner1.jpeg",fit: BoxFit.fill),
                    Text("商品1",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color:Colors.red),)
                  ],)
                 ),
                  Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: ListView(children: <Widget>[
                    Image.asset("images/banner2.jpeg",fit: BoxFit.fill),
                    Text("商品2",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color:Colors.red),)
                  ],)
                 ),
                  Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: ListView(children: <Widget>[
                    Image.asset("images/banner1.jpeg",fit: BoxFit.fill),
                    Text("商品3",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color:Colors.red),)
                  ],)
                 ),
                  Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: ListView(children: <Widget>[
                    Image.asset("images/banner2.jpeg",fit: BoxFit.fill),
                    Text("商品4",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color:Colors.red),)
                  ],)
                 ),
                  Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: ListView(children: <Widget>[
                    Image.asset("images/banner1.jpeg",fit: BoxFit.fill),
                    Text("商品5",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color:Colors.red),)
                  ],)
                 ),
                  Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: ListView(children: <Widget>[
                    Image.asset("images/banner2.jpeg",fit: BoxFit.fill,),
                    Text("商品6",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color:Colors.red),)
                  ],)
                 ),
                  Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: ListView(children: <Widget>[
                    Image.asset("images/banner1.jpeg",fit: BoxFit.fill),
                    Text("商品7",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color:Colors.red),)
                  ],)
                 ),
             ],
            )
          ),

          Container(
            child: Wrap(
              runSpacing: 10,
              alignment: WrapAlignment.center,
              spacing: 5,
              children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,color: 
                    Colors.red
                  ),
                  borderRadius: BorderRadius.circular(6)
                ),
                child:Text("魂斗罗")
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,color: 
                    Colors.red
                  ),
                  borderRadius: BorderRadius.circular(6)
                ),
                child:Text("魂斗罗")
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,color: 
                    Colors.red
                  ),
                  borderRadius: BorderRadius.circular(6)
                ),
                child:Text("魂斗罗")
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,color: 
                    Colors.red
                  ),
                  borderRadius: BorderRadius.circular(6)
                ),
                child:Text("魂斗罗")
              ),

              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,color: 
                    Colors.red
                  ),
                  borderRadius: BorderRadius.circular(6)
                ),
                child:Text("魂斗罗")
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,color: 
                    Colors.red
                  ),
                  borderRadius: BorderRadius.circular(6)
                ),
                child:Text("魂斗罗")
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,color: 
                    Colors.red
                  ),
                  borderRadius: BorderRadius.circular(6)
                ),
                child:Text("魂斗罗")
              ),
            ],),)
        ],
      ),
    );
  }
}



