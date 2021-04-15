import 'package:flutter/material.dart';
import 'package:shop1/Api/product.dart';

import '../../constants.dart';
import 'Product_image.dart';
import 'colorDot.dart';

class DeteilsBody extends StatelessWidget {
  final Product product;

  const DeteilsBody({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Product_Image(
                  size: size,
                  image: product.image,
                )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorDot(
                        fillColor: kTextLightColor,
                        isSelected: true,
                      ),
                      ColorDot(
                        fillColor: Colors.blue,
                        isSelected: false,
                      ),
                      ColorDot(
                        fillColor: Colors.red,
                        isSelected: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: kDefaultPadding / 2,
                  ),
                  child: Text(
                    product.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Text(
                  'السعر: \$${product.price}',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryColor,
                  ),
                ),
                SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical: kDefaultPadding / 2,
            ),
            child: Text(
              product.description,
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
