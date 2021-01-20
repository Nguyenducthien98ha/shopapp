import 'package:flutter/material.dart';
import 'package:shopapp/components/prroduct_card.dart';
import 'package:shopapp/screens/home/components/section_title.dart';
import 'package:shopapp/screens/models/Product.dart';
import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
      text: "Popular Product",
      press:(){}
    ),
    SizedBox(height: getProportionateScreenWidth(20),
    ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length,
              (index) => ProductCard(
                product: demoProducts[index],
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20),)
            ],
          ),
        ),
      ],
    );
  }
}