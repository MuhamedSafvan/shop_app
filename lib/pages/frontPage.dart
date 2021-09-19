import 'package:flutter/material.dart';
import 'package:shop_app/widgets/productList.dart';
import 'package:shop_app/widgets/slider.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              HomeSlider(),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mobile Phones",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(new MaterialPageRoute(
                        //   builder: (context) => ProductList(),
                        // ));
                      },
                      child: Text(
                        "VIEW ALL",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              ProductList(),
            ],
          ),
        ),
      ),
    );
  }
}
