import 'package:flutter/material.dart';

void main()=>runApp(CategoryPage());

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "分类页面",
          style: TextStyle(
            fontSize: 25,
            color: Colors.blue
          )
        ),
      ),
    );
  }
}