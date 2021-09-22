import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/cartController.dart';
import '../controllers/getXController.dart';
import '../widgets/checkOut.dart';

import '../widgets/cartProducts.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final MyController getValueCount = Get.put(MyController());
  final CartController getCartList = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 130),
            child: getCartList.cartValue(),
          ),
        ),
        body: CartProducts(),
        floatingActionButton: CheckOut(),
      ),
    );
  }
}
