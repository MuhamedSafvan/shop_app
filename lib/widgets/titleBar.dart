import 'package:flutter/material.dart';
import 'package:shop_app/controllers/homePageJson.dart';

class TitleBars extends StatefulWidget {
  final Function() buttonAction;
  final int index;

  TitleBars({
    required this.buttonAction,
    required this.index,
  });

  @override
  _TitleBarsState createState() => _TitleBarsState();
}

class _TitleBarsState extends State<TitleBars> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: readHomeJson(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List list = [snapshot.data];
            String textInput = list[0][widget.index]["data"]["title"];
            return Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    textInput.toUpperCase(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: widget.buttonAction,
                    child: Text(
                      'VIEW ALL',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
