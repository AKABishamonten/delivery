import 'package:delivery/models/catgory_api.dart';
import 'package:delivery/widgets/bottom_container.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final List<ProductCategoriesModle> list;
  final String productDetail;
  final String productImage;
  final String productName;
  final String productPrice;
  final String productType;

  const Categories({
    Key? key,
    required this.list,
    required this.productDetail,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.productType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: GridView.count(
        shrinkWrap: false,
        primary: false,
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: list
            .map(
              (e) => BottomContainer(
                onTap: () {
                  /*Navigator.of(context).pushNamed(
                    '/DetailScreen',
                    arguments: {
                      'productDetail': e.productDetail,
                      'productImage': e.productImage,
                      'productName': e.productName,
                      'productPrice': e.productPrice,
                      'productType': e.productType,
                    },
                  );*/
                },
                productName: e.productName,
                productDetail: e.productDetail,
                productType: e.productType,
                productPrice: e.productPrice,
                productImage: e.productImage,
              ),
            )
            .toList(),
      ),
    );
  }
}