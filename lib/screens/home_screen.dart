import 'package:delivery/models/catgory_api.dart';
import 'package:delivery/models/product_model.dart';
import 'package:delivery/providers/product_provider.dart';
import 'package:delivery/widgets/category_button/category.dart';
import 'package:delivery/widgets/grid_product.dart';
import 'package:delivery/widgets/image_silde.dart';
import 'package:delivery/widgets/location_bar.dart';
import 'package:delivery/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<ProductModel> singleProductList = [];
  List<ProductCategoriesModle> cpuCategoriesList = [];
  late LatLng _currentLocationLatLag;

  @override
  Widget build(BuildContext context) {
    ProductProvider productProvider = Provider.of<ProductProvider>(context);
    productProvider.fetchCpuproductData();
    singleProductList = productProvider.throwCpuModleList;
    productProvider.getCpuCategoriesList();
    cpuCategoriesList = productProvider.throwCpuCategoriesList;
    return SingleChildScrollView(
      child: Column(
        children: [
          LocationBar(),
          ScarchBarWidget(),
          ImageSilde(),
          CategoryWidget(),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 15,),
            child: Text('Restaurant near me', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 20),),
          ),
          GridPokemon()
        ],
      ),
    );
  }
}
