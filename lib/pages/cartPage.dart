import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.only(left: 130),
          child: cartValue(),
          // child: Text('My Cart'),
        ),
      ),
      body: CartProducts(),
      floatingActionButton: CheckOut(),
    );
  }
}

