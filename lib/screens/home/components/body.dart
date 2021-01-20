import 'package:flutter/material.dart';
import 'package:shopapp/screens/home/components/categoties.dart';
import 'package:shopapp/screens/home/components/popular_products.dart';
import 'package:shopapp/screens/home/components/special_offers.dart';
import 'package:shopapp/size_config.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(10),),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10),),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(10),),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(10),),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(10),),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(10),),
          ],
        ),
      ),
    );
  }
}