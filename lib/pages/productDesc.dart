import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import '../controllers/productPageJson.dart';

class ProductDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
          future: readProductJson(),
          builder: (ctx, snapshot) {
            if (snapshot.hasData) {
              List list = [snapshot.data];
              // List productSpecs = list[0]['attrs']['specs'];

              return Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                child: ListView(
                  children: [
                    Text('Specifications: \n', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Html(data: list[0]['description'], style: {
                      'body': Style(fontSize: FontSize(20), lineHeight: LineHeight(2)),
                    },),
                  ],
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
