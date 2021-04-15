import 'package:flutter/material.dart';
import 'package:shop1/Api/product.dart';

import '../../constants.dart';

class Product_Image extends StatelessWidget {
  const Product_Image({
    Key key,
    @required this.size, this.product, this.image,
  }) : super(key: key);

  final Size size;
  final Product product;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.width * 0.75,
            width: size.width * 0.75,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}