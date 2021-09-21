import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../controllers/productPageJson.dart';
import './cartPage.dart';
import './productDesc.dart';
import '../widgets/similarProducts.dart';

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
            String productName = list[0]['name'];
            double productPrice = list[0]['price'];
            int productSpPrice = list[0]['special_price'];
            String productColor = list[0]['attrs']['color'];
            List productSpecs = list[0]['attrs']['specs'];
            return ListView(
              shrinkWrap: true,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 400,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 50),
                        width: 300,
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
                            color: Colors.black26,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.yellow[700],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.white,
                            ),
                            Text(
                              '3.4',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'OMR ${productSpPrice.toStringAsFixed(2)}',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.red[600],
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'OMR ${productPrice.toStringAsFixed(2)}',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 24,
                                color: Colors.black26,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                  padding: EdgeInsets.only(left: 20),
                  height: 50,
                  color: Colors.blueGrey[100],
                  child: Row(
                    children: [
                      Text(
                        'Color',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black45,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Image.network(productColor),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: productSpecs.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  ('${productSpecs[index]['title']}'
                                      .toUpperCase()),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Image.network(
                                  productSpecs[index]['icon'],
                                  height: 60,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  productSpecs[index]['value'],
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
                
                lineDivider(),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10, left: 5),
                          child: Text(
                            'About Product',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 150),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductDesk(),
                            ));
                          },
                          child: Text(
                            'See more..',
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
                SizedBox(
                  height: 10,
                ),
                lineDivider(),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('Similar Products',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SimilarProducts(),
                SizedBox(
                  height: 60,
                )
              ],
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

Widget lineDivider() {
  return Divider(
    thickness: 10,
    color: Colors.grey[350],
  );
}
