import 'package:flutter/material.dart';
import 'package:shop_app/widgets/checkOut.dart';

import '../widgets/cartProducts.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 130),
          child: cartValue(),
        ),
      ),
      body: CartProducts(),
      floatingActionButton: CheckOut(),
    );
  }
}
