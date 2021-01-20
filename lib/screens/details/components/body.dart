import 'package:flutter/material.dart';
import 'package:shopapp/components/default_button.dart';
import 'package:shopapp/screens/details/components/product_description.dart';
import 'package:shopapp/screens/details/components/product_image.dart';
import 'package:shopapp/screens/details/components/top_rounded_container.dart';
import 'package:shopapp/screens/models/Product.dart';
import 'package:shopapp/size_config.dart';

import 'color_dots.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key key,@required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: (){}
                  ),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth*0.15,
                            right: SizeConfig.screenWidth*0.15,
                            top: getProportionateScreenWidth(15),
                            bottom: getProportionateScreenWidth(50)
                            ),
                          child: DefaultButton(
                          text: "Add to cart",
                          press: (){},
                      ),
                        ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}