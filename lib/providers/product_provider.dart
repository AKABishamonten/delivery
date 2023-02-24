import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery/models/categories_modle.dart';
import 'package:delivery/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {

  ////////////////Catgory Model////////////////
  ///////////////Catgory CPU//////////////////
  List<CategoriesModle> cpuList = [];
  late CategoriesModle cpuModle;
  
  Future<void> getCpuCategory() async {
    List<CategoriesModle> newCpuList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categoriesmenu')
        .doc('hvDIlvFEs6COLfmh6Hs7')
        .collection('CPU')
        .get();
    querySnapshot.docs.forEach((element) {
      cpuModle = CategoriesModle(
        image: element.get("image"),
        name: element.get("name"),
      );
      newCpuList.add(cpuModle);
      cpuList = newCpuList;
    });
    notifyListeners();
  }

  get throwCpuList {
    return cpuList;
  }
////////////End Catgory CPU//////////////////
//////////// Catgory MainBoard//////////////////
List<CategoriesModle> mainboardList = [];
  late CategoriesModle mainboardModle;
  
  Future<void> getMainboardCategory() async {
    List<CategoriesModle> newMainboardList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categoriesmenu')
        .doc('hvDIlvFEs6COLfmh6Hs7')
        .collection('Mainboard')
        .get();
    querySnapshot.docs.forEach((element) {
      mainboardModle = CategoriesModle(
        image: element.get("image"),
        name: element.get("name"),
      );
      newMainboardList.add(mainboardModle);
      mainboardList = newMainboardList;
    });
    notifyListeners();
  }

  get throwMainboardList {
    return mainboardList;
  }
////////////End Catgory MainBoard///////////////
/////////////// Catgory Ram//////////////////
List<CategoriesModle> ramList = [];
  late CategoriesModle ramModle;
  
  Future<void> getRamCategory() async {
    List<CategoriesModle> newRamList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categoriesmenu')
        .doc('hvDIlvFEs6COLfmh6Hs7')
        .collection('Ram')
        .get();
    querySnapshot.docs.forEach((element) {
      ramModle = CategoriesModle(
        image: element.get("image"),
        name: element.get("name"),
      );
      newRamList.add(ramModle);
      ramList = newRamList;
    });
    notifyListeners();
  }

  get throwRamList {
    return ramList;
  }
////////////End Catgory Ram///////////////
/////////////// Catgory VGA//////////////////
List<CategoriesModle> vgaList = [];
  late CategoriesModle vgaModle;
  
  Future<void> getVgaCategory() async {
    List<CategoriesModle> newVgaList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categoriesmenu')
        .doc('hvDIlvFEs6COLfmh6Hs7')
        .collection('VGA')
        .get();
    querySnapshot.docs.forEach((element) {
      vgaModle = CategoriesModle(
        image: element.get("image"),
        name: element.get("name"),
      );
      newVgaList.add(vgaModle);
      vgaList = newVgaList;
    });
    notifyListeners();
  }

  get throwVgaList {
    return vgaList;
  }
////////////End Catgory VGA///////////////
/////////////// Catgory SSD//////////////////
List<CategoriesModle> ssdList = [];
  late CategoriesModle ssdModle;
  
  Future<void> getSsdCategory() async {
    List<CategoriesModle> newSsdList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categoriesmenu')
        .doc('hvDIlvFEs6COLfmh6Hs7')
        .collection('SSD')
        .get();
    querySnapshot.docs.forEach((element) {
      ssdModle = CategoriesModle(
        image: element.get("image"),
        name: element.get("name"),
      );
      newSsdList.add(ssdModle);
      ssdList = newSsdList;
    });
    notifyListeners();
  }

  get throwSsdList {
    return ssdList;
  }
////////////End Catgory SSD///////////////
/////////////// Catgory PowerSuplly//////////////////
List<CategoriesModle> powersupplyList = [];
  late CategoriesModle powersupplyModle;
  
  Future<void> getPowersupplyCategory() async {
    List<CategoriesModle> newPowersupplyList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categoriesmenu')
        .doc('hvDIlvFEs6COLfmh6Hs7')
        .collection('Power Supply')
        .get();
    querySnapshot.docs.forEach((element) {
      powersupplyModle = CategoriesModle(
        image: element.get("image"),
        name: element.get("name"),
      );
      newPowersupplyList.add(powersupplyModle);
      powersupplyList = newPowersupplyList;
    });
    notifyListeners();
  }

  get throwPowersupplyList {
    return powersupplyList;
  }
////////////End Catgory PowerSuplly///////////////
/////////////// Catgory Case//////////////////
List<CategoriesModle> caseList = [];
  late CategoriesModle caseModle;
  
  Future<void> getCaseCategory() async {
    List<CategoriesModle> newCaseList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categoriesmenu')
        .doc('hvDIlvFEs6COLfmh6Hs7')
        .collection('Case')
        .get();
    querySnapshot.docs.forEach((element) {
      caseModle = CategoriesModle(
        image: element.get("image"),
        name: element.get("name"),
      );
      newCaseList.add(caseModle);
      caseList = newCaseList;
    });
    notifyListeners();
  }

  get throwCaseList {
    return caseList;
  }
////////////End Catgory Case///////////////
//////////////End Catgory Model//////////////


/////////////HomeScreen Product//////////////
  List<ProductModel> productList = [];
  late ProductModel productModel;

  Future<void>fetchCpuproductData() async {
    List<ProductModel> newSingleProductList  = [];
   QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection("CPU").get();
   querySnapshot.docs.forEach(
    (element) {
      productModel = ProductModel(
        productName: element.get("productName"),
        productDetail: element.get("productDetail"),
        productType: element.get("productType"),
        productPrice: element.get("productPrice"),
        productImage: element.get("productImage"),
      );
      newSingleProductList.add(productModel);
   },
   );
   productList = newSingleProductList;
   notifyListeners();
  }

  get throwFoodModleList {
    return productList;
  }
  //////////////End HomeScreen Product//////////////
}