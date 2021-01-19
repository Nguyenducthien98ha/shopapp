import 'package:flutter/material.dart';
import 'package:shopapp/screens/home/components/categoties.dart';
import 'package:shopapp/screens/home/components/section_title.dart';
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
            SizedBox(height: getProportionateScreenWidth(20),),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30),),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30),),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30),),
            SectionTitle(
              text: "Special for you",
              press: (){},
            ),
            SizedBox(
              width: getProportionateScreenWidth(242),
              height: getProportionateScreenWidth(100),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/Image Banner 2.png",fit: BoxFit.cover,),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF343434).withOpacity(0.4),
                              Color(0xFF343434).withOpacity(0.15),
                            ]
                          )
                        ),
                      )
                  ],
                )),
            )
          ],
        ),
      ),
    );
  }
}