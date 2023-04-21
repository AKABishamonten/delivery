import 'package:delivery/models/cart_model.dart';
import 'package:delivery/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class OrderItem extends StatefulWidget {


 OrderItem({super.key,});

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network("https://res.cloudinary.com/itcity-production/image/upload/f_auto,q_auto,w_800/v1664263113/products/PRD202209003226/skus/sm4h3wiup5ztw1j1uu48.jpg", height: 50,),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('INTEL Core i5-13600K'),
          Text('X 1'),
          Text('฿ 13370'),
        ],
      ),
    );
  }
}