import 'package:delivery/models/bottom_categories_model.dart';
import 'package:delivery/models/catgory_api.dart';
import 'package:delivery/providers/product_provider.dart';
import 'package:delivery/screens/categories_screen.dart';
import 'package:delivery/widgets/category_button/categories_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {

  List<BottomCategoriesModle> cpuList = [];
  List<BottomCategoriesModle> mainboardList = [];
  List<BottomCategoriesModle> ramList = [];
  List<BottomCategoriesModle> vgaList = [];
  List<BottomCategoriesModle> ssdList = [];
  List<BottomCategoriesModle> powersupplyList = [];
  List<BottomCategoriesModle> caseList = [];

  List<ProductCategoriesModel> cpuCategoriesList = [];
  List<ProductCategoriesModel> mainboardCategoriesList = [];
  List<ProductCategoriesModel> ramCategoriesList = [];
  List<ProductCategoriesModel> vgaCategoriesList = [];
  List<ProductCategoriesModel> ssdCategoriesList = [];
  List<ProductCategoriesModel> powersupplyCategoriesList = [];
  List<ProductCategoriesModel> caseCategoriesList = [];
  Widget cpu() {
    return Row(
      children: cpuList
          .map((e) => CategoriesContainer(
              image: e.image,
              name: e.name,
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Categories(
                      list: cpuCategoriesList, 
                    ),
                  ),
                );
              }))
          .toList(),
    );
  }
  Widget mainboard() {
    return Row(
      children: mainboardList
          .map((e) => CategoriesContainer(
              image: e.image,
              name: e.name,
              onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Categories(
                      list: mainboardCategoriesList, 
                      
                    ),
                  ),
                );
              }))
          .toList(),
    );
  }
  Widget ram() {
    return Row(
      children: ramList
          .map((e) => CategoriesContainer(
              image: e.image,
              name: e.name,
              onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Categories(
                      list: ramCategoriesList, 
                    ),
                  ),
                );
              }))
          .toList(),
    );
  }
  Widget vga() {
    return Row(
      children: vgaList
          .map((e) => CategoriesContainer(
              image: e.image,
              name: e.name,
              onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Categories(
                      list: vgaCategoriesList, 
                    ),
                  ),
                );
              }))
          .toList(),
    );
  }
    Widget ssd() {
    return Row(
      children: ssdList
          .map((e) => CategoriesContainer(
              image: e.image,
              name: e.name,
              onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Categories(
                      list: ssdCategoriesList, 
                    ),
                  ),
                );
              }))
          .toList(),
    );
  }
    Widget power() {
    return Row(
      children: powersupplyList
          .map((e) => CategoriesContainer(
              image: e.image,
              name: e.name,
              onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Categories(
                      list: powersupplyCategoriesList, 
                    ),
                  ),
                );
              }))
          .toList(),
    );
  }
    Widget casecom() {
    return Row(
      children: caseList
          .map((e) => CategoriesContainer(
              image: e.image,
              name: e.name,
              onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Categories(
                      list: caseCategoriesList, 
                    ),
                  ),
                );
              }))
          .toList(),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    ProductProvider productProvider = Provider.of<ProductProvider>(context);
    ////// Button Categories /////
    productProvider.getCpuCategory();
    cpuList = productProvider.throwCpuList;
    productProvider.getMainboardCategory();
    mainboardList = productProvider.throwMainboardList;
    productProvider.getRamCategory();
    ramList = productProvider.throwRamList;
    productProvider.getVgaCategory();
    vgaList = productProvider.throwVgaList;
    productProvider.getSsdCategory();
    ssdList = productProvider.throwSsdList;
    productProvider.getPowersupplyCategory();
    powersupplyList = productProvider.throwPowersupplyList;
    productProvider.getCaseCategory();
    caseList = productProvider.throwCaseList;
    /////// End Button Categories /////
    
    /////// Categories list ///////////
    productProvider.getCpuCategoriesList();
    cpuCategoriesList = productProvider.throwCpuCategoriesList;
    productProvider.getMainboardCategoriesList();
    mainboardCategoriesList = productProvider.throwMainboardCategoriesList;
    productProvider.getRamCategoriesList();
    ramCategoriesList = productProvider.throwRamCategoriesList;
    productProvider.getVgaCategoriesList();
    vgaCategoriesList = productProvider.throwVgaCategoriesList;
    productProvider.getSsdCategoriesList();
    ssdCategoriesList = productProvider.throwSsdCategoriesList;
    productProvider.getPowersupplyCategoriesList();
    powersupplyCategoriesList = productProvider.throwPowersupplyCategoriesList;
    productProvider.getCaseCategoriesList();
    caseCategoriesList = productProvider.throwCaseCategoriesList;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          cpu(),
          mainboard(),
          ram(),
          vga(),
          ssd(),
          power(),
          casecom(),
        ]
        )
      );
  }

}





  