import 'package:flutter/material.dart';
import '../controllers/testFile.dart';
import '../pages/productPage.dart';

class FeaturedItems extends StatefulWidget {
  @override
  _FeaturedItemsState createState() => _FeaturedItemsState();
}

class _FeaturedItemsState extends State<FeaturedItems> {
  @override
  Widget build(BuildContext context) {
    
    List mobilePhones = listHomePage;
    if (mobilePhones.isNotEmpty) {
      List items = mobilePhones[2]['data']['items'];
      return GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
          ),
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
                  height: 600,
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
