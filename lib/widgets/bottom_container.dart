import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomContainer extends StatelessWidget {
  String productName;
  String productDetail;
  String productType;
  String productPrice;
  String productImage;
  final Function onTap;
  BottomContainer({
    required this.productName,
    required this.productDetail,
    required this.productType,
    required this.productPrice,
    required this.productImage,
    required this. onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(blurStyle: BlurStyle.outer  
                          )],
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[300],
                        ),
                        child: Image.network(productImage)
                      ),
                      Positioned(
                        right: 8,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Icon(Icons.favorite_border,color: Colors.white, shadows: [Shadow(blurRadius: 4)],),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(productName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      Text(productType, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                SizedBox(height: 70,),
                  Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Text(productPrice, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        const Text('???', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
