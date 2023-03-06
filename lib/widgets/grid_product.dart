import 'package:delivery/models/catgory_api.dart';
import 'package:delivery/models/product_model.dart';
import 'package:delivery/providers/product_provider.dart';
import 'package:delivery/screens/detail_screen.dart';
import 'package:delivery/widgets/bottom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class GridPokemon extends StatefulWidget {
  const GridPokemon({super.key});

  @override
  State<GridPokemon> createState() => _GridPokemonState();
}

class _GridPokemonState extends State<GridPokemon> {
  List<ProductModel> singleProductList = [];
  List<ProductCategoriesModle> cpuCategoriesList = [];

   @override
  Widget build(BuildContext context) {
    ProductProvider productProvider = Provider.of<ProductProvider>(context);
    productProvider.fetchCpuproductData();
    singleProductList = productProvider.throwCpuModleList;
    productProvider.getCpuCategoriesList();
    cpuCategoriesList = productProvider.throwCpuCategoriesList;
    return LayoutBuilder(builder: (context, constraints){
      return GridView.count(
        crossAxisCount: constraints.maxWidth > 700 ? 3 : 2,
        childAspectRatio: 0.7,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: singleProductList.map((e) => BottomContainer(
          onTap: (){
          },
          productName: e.productName,
          productDetail: e.productDetail,
          productType: e.productType,
          productPrice: e.productPrice,
          productImage: e.productImage,
        )).toList()
      );
    }
    );
  }
}