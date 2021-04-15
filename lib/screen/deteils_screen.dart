import 'package:flutter/material.dart';
import 'package:shop1/Api/product.dart';
import 'package:shop1/constants.dart';
import 'package:shop1/widget/deteils/bodyDeteils.dart';

class DeteilsScreen extends StatelessWidget {
  final Product product;

  const DeteilsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        title: Text(
          'رجوع',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: DeteilsBody(
        product: product,
      ),
    );
  }
}
