import 'package:flutter/material.dart';
import 'package:shop_app/controllers/imageLinks.dart';
import 'package:shop_app/controllers/similarJson.dart';

class SimilarProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: readSimilarJson(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Map<String, dynamic> map = snapshot.data as Map<String, dynamic>;
            List list = map['items'];
            String currency = map['currency'];
            return GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: list.length,
                padding: EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 300,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (ctx, index) {
                  return Container(
                    // color: Colors.indigo,
                    height: 70,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 190,
                            child: Image.network(similarImageLinks[index])),
                        Container(
                          // color: Colors.grey,
                          child: Column(
                            children: [
                              Text(
                                list[index]['name'],
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    currency,
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red[700]),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '${list[index]['price'].toStringAsFixed(2)}',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red[700]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                });
            // );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
