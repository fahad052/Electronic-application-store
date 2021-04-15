import 'package:flutter/material.dart';
import 'package:shop1/Api/product.dart';
import 'package:shop1/constants.dart';
import 'package:shop1/screen/deteils_screen.dart';
import 'package:shop1/widget/home/product_card.dart';

class BodyScreen extends StatelessWidget {
  final Product product;

  const BodyScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(top: 70),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => productCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DeteilsScreen(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
