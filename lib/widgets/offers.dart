import 'package:flutter/material.dart';
import 'package:shop_app/controllers/homePageJson.dart';
import 'package:shop_app/pages/productPage.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: readHomeJson(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List list = [snapshot.data];
            List newList = list[0][5]["data"]["items"];
            return ListView.builder(
                // controller: ScrollController(),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisSpacing: 10,
                //   mainAxisSpacing: 10,
                //   crossAxisCount: 2,
                // ),
                itemCount: newList.length,
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
                        height: 300,
                        color: Colors.yellow,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Image.network(
                                  newList[index]['image'],
                                  fit: BoxFit.fitHeight,
                                  height: 150,
                                ),
                                Text(newList[index]['name'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey[600])),
                                Text(
                                  'OMR ${newList[index]['price'].toStringAsFixed(2)}',
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
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}