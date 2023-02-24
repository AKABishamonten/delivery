import 'package:delivery/models/categories_modle.dart';
import 'package:delivery/models/catgory_api.dart';
import 'package:delivery/providers/product_provider.dart';
import 'package:delivery/widgets/category_button/categories_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {

  List<CategoriesModle> cpuList = [];
  List<CategoriesModle> mainboardList = [];
  List<CategoriesModle> ramList = [];
  List<CategoriesModle> vgaList = [];
  List<CategoriesModle> ssdList = [];
  List<CategoriesModle> powersupplyList = [];
  List<CategoriesModle> caseList = [];
  Widget cpu() {
    return Row(
      children: cpuList
          .map((e) => CategoriesContainer(
              image: e.image,
              name: e.name,
              onTap: () {
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
              }))
          .toList(),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    ProductProvider productProvider = Provider.of<ProductProvider>(context);
    // 1st
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





  