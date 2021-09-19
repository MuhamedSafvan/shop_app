import 'package:flutter/material.dart';
import 'cartList.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  int counter = 0;

  void incrementctr() {
    setState(() {
      counter++;
    });
  }

  void decrementctr() {
    if (counter != 0) {
      setState(() {
        counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: ScrollController(),
      itemCount: cartList.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 10,
          child: Container(
            height: 200,
            width: 500,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, top: 10),
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cartList[index]['name'],
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'OMR ${cartList[index]['price'].toStringAsFixed(2)}',
                            style: TextStyle(
                                color: Colors.red[700],
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete_forever_outlined,
                              color: Colors.black38,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 149,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(
                        cartList[index]['image'],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              return decrementctr();
                            },
                            icon: Icon(
                              Icons.remove_circle,
                              size: 35,
                              color: Colors.black38,
                            ),
                          ),
                          Text(
                            '$counter',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {
                              return incrementctr();
                            },
                            icon: Icon(Icons.add_circle,
                                size: 35, color: Colors.black38),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return new Container(
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
