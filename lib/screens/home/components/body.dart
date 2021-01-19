import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp/constants.dart';
import 'package:shopapp/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: SizeConfig.screenWidth*0.6,
                      height: 50,
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        onChanged: (value){},
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Search Product",
                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                            vertical: getProportionateScreenWidth(9),
                          )
                        ),
                      ),
                  ),
                  IconBtnWithCounter(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key key, this.svgSrc, this.numOfItems, this.press,
  }) : super(key: key);

final String svgSrc;
final int numOfItems;
final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      borderRadius: BorderRadius.circular(50),
      child: Stack(
      overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/icons/Bell.svg"),
          ),
          Positioned(
            right: 0,
            top: -3,
            child: Container(height: getProportionateScreenWidth(16),
            width: getProportionateScreenWidth(16),
            decoration: BoxDecoration(
              color: Color(0xFFFF4848),
              shape: BoxShape.circle,
              border: Border.all(width: 1.5, color: Colors.white)
            ),
            child: Center(
              child: Text("3",style: TextStyle(
                fontSize: getProportionateScreenWidth(10),
                height: 1,
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),),
            ),
            ),
          ),
        ],
      ),
    );
  }
}