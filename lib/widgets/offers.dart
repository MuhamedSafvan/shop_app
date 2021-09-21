import 'package:flutter/material.dart';
import '../controllers/testFile.dart';
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
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.center,
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
                      ),
                    ),
                    items[index]['storage'] != false
                        ? Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              color: Colors.brown,
                              child: Text(
                                items[index]['storage'],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        : SizedBox(),
                  ])),
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
