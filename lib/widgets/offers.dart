import 'package:flutter/material.dart';
import 'package:shop_app/controllers/testFile.dart';
import '../pages/productPage.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    List mobilePhones = listHomePage;
    if (mobilePhones.isNotEmpty) {
      List items = mobilePhones[5]['data']['items'];
      return ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisSpacing: 10,
          //   mainAxisSpacing: 10,
          //   crossAxisCount: 2,
          // ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (context) => ProductPage(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.only(top: 10),
                  height: 250,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.network(
                            items[index]['image'],
                            height: 150,
                          ),
                          Text(items[index]['name'],
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey[600])),
                          Text(
                            'OMR ${items[index]['price'].toStringAsFixed(2)}',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red[800]),
                          ),
                        ],
                      ),
                    ],
                  )),
            );
          });
    } else {
      return GridView(
        shrinkWrap: true,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      );
    }
  }
}
