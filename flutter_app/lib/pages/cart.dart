import 'package:flutter/material.dart';


void main() => runApp(CartPage());


class CartPage extends StatelessWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:  Text(
        "请购物谢谢",
        style: TextStyle(
          fontSize: 30,
          color: Colors.orange
        ),
      ))
    );
  }
}