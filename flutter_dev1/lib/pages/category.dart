import 'package:flutter/material.dart';

void main()=>runApp(CategoryPage());

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          children: <Widget>[
            Row(children: <Widget>[
               TextField(decoration: InputDecoration(labelText: "输入关键自"),)
            ],)
          ],
        ),
    );
  }
}