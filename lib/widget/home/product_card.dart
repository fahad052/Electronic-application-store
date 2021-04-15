
import 'package:flutter/material.dart';
import 'package:shop1/Api/product.dart';

import '../../constants.dart';

class productCard extends StatelessWidget {
  const productCard({
    Key key,
    @required this.press,
    this.itemIndex,
    this.product,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 125,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 25,
                    color: Colors.black12,
                    offset: Offset(0, 15),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                height: 130,
                width: 170,
                child: Image.asset(product.image),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                height: 116,
                width: size.width - 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Spacer(),
                    Text(
                      product.subTitle,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding - 5,
                        vertical: kDefaultPadding / 5,
                      ),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Text('السعر :\$${product.price}'),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
