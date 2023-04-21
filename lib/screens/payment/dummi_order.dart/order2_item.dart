import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SecOrderItem extends StatelessWidget {
  const SecOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network("https://www.amd.com/system/files/2022-11/1761310-amd-ryzen-5-7000-series-PIB-angle-1260x709.png", height: 40,),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('AMD RYZEN 5 7600X'),
          Text('X 1'),
          Text('฿ 11400'),
        ],
      ),
    );
  }
}