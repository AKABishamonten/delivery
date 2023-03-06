import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String productDetail;
  final String productImage;
  final String productName;
  final String productPrice;
  final String productType;

  const DetailScreen({
    Key? key,
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
        title: Text(productName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(productImage),
            Text(
              productName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              productPrice,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              productType,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              productDetail,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}