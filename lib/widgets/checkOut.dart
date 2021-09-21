import 'package:flutter/material.dart';
import '../widgets/cartList.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    if (cartList.length != 0) {
      return Container(
        padding: EdgeInsets.only(right: 10),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: ListTile(
                  title: Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: calSum(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "CHECKOUT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Center(
          child: Text(
            'Your Cart Is Empty',
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
    }
  }
}

cartValue() {
  int count = cartList.length;
  return Text(
    'My Cart ($count)',
    style: TextStyle(fontWeight: FontWeight.bold),
  );
}

calSum() {
  double total = 0.00;
  for (int i = 0; i < cartList.length; i++) {
    total += cartList[i]['price'];
  }
  return Text(
    'OMR ${total.toStringAsFixed(2)}',
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black54,
    ),
  );
}
