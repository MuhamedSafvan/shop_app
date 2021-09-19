import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shop_app/controllers/configJson.dart';

class HomeSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      color: Colors.black12,
      child: FutureBuilder(
          future: readConfigJson(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Map<String, dynamic> map = snapshot.data as Map<String, dynamic>;
              List list = map['data']['slider'];
              return CarouselSlider.builder(
                itemCount: list.length,
                itemBuilder: (context, index, hero) {
                  return Image.network(
                    list[index]['image'],
                  );
                },
                options: CarouselOptions(
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  height: 300,
                  viewportFraction: 1,
                  autoPlay: true,
                ),
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
