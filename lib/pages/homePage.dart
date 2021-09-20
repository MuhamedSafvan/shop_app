import 'package:flutter/material.dart';
import 'package:shop_app/widgets/banner.dart';
import 'package:shop_app/widgets/featuredItems.dart';
import 'package:shop_app/widgets/mobilePhones.dart';
import 'package:shop_app/widgets/newArrivals.dart';
import 'package:shop_app/widgets/offers.dart';
import 'package:shop_app/widgets/slider.dart';
import 'package:shop_app/widgets/testProducts.dart';
import 'package:shop_app/widgets/titleBar.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
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
          TitleBars(buttonAction: (){}, index: 5),
          Offers(),
        ],
      ),
    );
  }
}
