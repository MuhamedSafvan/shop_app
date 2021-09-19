import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/controllers/productPageJson.dart';
import 'package:shop_app/pages/cartPage.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(90.0),
          child: Text('Item Details'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('Searched');
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (context) => CartPage(),
                ),
              );
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 30),
        padding: EdgeInsets.only(),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(),
          onPressed: () {
            print('FAB');
          },
          child: Text(
            'ADD TO CART',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          elevation: 10,
        ),
      ),
      body: FutureBuilder(
        future: readProductJson(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List list = [snapshot.data];
            List listImage = list[0]['image'];
            // List listName = list[0]['name'];
            // Map<String, dynamic> map = snapshot.data as Map<String, dynamic>;
            return ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 400,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 50),
                        // color: Colors.brown,
                        width: 300,
                        // child: Text('$newList'),
                        child: CarouselSlider.builder(
                          itemCount: listImage.length,
                          itemBuilder: (context, index, hero) {
                            return Image.network(
                              listImage[index],
                              fit: BoxFit.cover,
                            );
                          },
                          options: CarouselOptions(
                            aspectRatio: 16 / 9,
                            viewportFraction: 1,
                            height: 400,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 300, left: 20),
                        width: 50,
                        child: IconButton(
                          alignment: Alignment.center,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_outline,
                            size: 35,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 50,
                  color: Colors.yellowAccent,
                  // child: Image.network('$newList[attrs][]'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 100,
                  color: Colors.greenAccent,
                  // child: Text('${list[0]['name']}'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                  height: 50,
                  color: Colors.blueGrey,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 120,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 10,
                  color: Colors.grey[350],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                  height: 150,
                  color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10, left: 20),
                          child: Text(
                            'About Product',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 150),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'View details...',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.red[800]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.orange,
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height + 10,
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      controller: ScrollController(keepScrollOffset: false),
                      itemCount: 15,
                      padding: EdgeInsets.all(10),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5),
                      itemBuilder: (ctx, index) {
                        return Container(
                            color: Colors.purple, child: Text('Done'));
                      }),
                ),
              ],
              controller: ScrollController(keepScrollOffset: false),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
