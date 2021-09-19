import 'package:flutter/material.dart';
import 'package:shop_app/controllers/imageLinks.dart';
import '../controllers/homePageJson.dart';

import 'package:shop_app/pages/productPage.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      padding: EdgeInsets.all(10),
      height: 480,
      child: FutureBuilder(
          future: readHomeJson(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List list = [snapshot.data];
              List newList = list[0][0]["data"]["items"];
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (context) => ProductPage(),
                    ),
                  );
                },
                child: GridView.builder(
                    controller: ScrollController(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                    ),
                    itemCount: newList.length,
                    itemBuilder: (context, index) {
                      return Container(
                          color: Colors.yellow,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.network(imageLinks[index], fit: BoxFit.fitHeight,height: 150,),
                                  Text(newList[index]['name'],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey[600])),
                                  Text(
                                    'OMR ${newList[index]['price']}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red[800]),
                                  ),
                                ],
                              )
                            ],
                          ));
                    }),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
