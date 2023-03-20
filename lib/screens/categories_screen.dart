import 'package:delivery/models/catgory_api.dart';
import 'package:delivery/screens/detail_screen.dart';
import 'package:delivery/widgets/bottom_container.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final List<ProductCategoriesModel> list;

  const Categories({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.orangeAccent,),
          onPressed: () {
            Navigator.pushNamed(context, "/MainScreen");
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: GridView.count(
          shrinkWrap: false,
          primary: false,
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          children: list
              .map(
                (e) => BottomContainer(
                  onTap: () {
                   Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            productName: e.productName,
                            productDetail: e.productDetail,
                            productType: e.productType,
                            productPrice: e.productPrice,
                            productImage: e.productImage,
                          ),
                        ),
                      );
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
      ),
    );
  }
}