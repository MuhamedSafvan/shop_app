import 'package:flutter/material.dart';
import '../widgets/banner.dart';
import '../widgets/featuredItems.dart';
import '../widgets/mobilePhones.dart';
import '../widgets/newArrivals.dart';
import '../widgets/offers.dart';
import '../widgets/testProducts.dart';
import '../widgets/titleBar.dart';
import '../widgets/slider.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        shrinkWrap: true,
        children: [
          HomeSlider(),
          TitleBars(buttonAction: () {}, index: 0),
          MobilePhones(),
          TitleBars(buttonAction: () {}, index: 1),
          TestProducts(),
          TitleBars(buttonAction: () {}, index: 2),
          FeaturedItems(),
          CustomBanner(),
          TitleBars(buttonAction: () {}, index: 4),
          NewArrivals(),
          TitleBars(buttonAction: () {}, index: 5),
          Offers(),
        ],
      ),
    );
  }
}
