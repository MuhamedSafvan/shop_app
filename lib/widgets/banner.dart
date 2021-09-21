import 'package:flutter/material.dart';
import '../controllers/homePageJson.dart';

class CustomBanner extends StatefulWidget {
  @override
  _CustomBannerState createState() => _CustomBannerState();
}

class _CustomBannerState extends State<CustomBanner> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: readHomeJson(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List list = [snapshot.data];
            String image = list[0][3]["data"]["file"];
            return Container(
              child: Image.network(image),
            );
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
        });
  }
}
