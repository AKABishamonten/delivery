import 'package:flutter/cupertino.dart';

class CartModel {
  late final String productName;
  late final String productImage;
  late final int productPrice;
  late final int quantity;

  CartModel({
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.quantity,
  });
}