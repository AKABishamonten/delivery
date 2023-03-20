import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery/models/bottom_categories_model.dart';
import 'package:delivery/models/cart_model.dart';
import 'package:delivery/models/catgory_api.dart';
import 'package:delivery/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {

  ////////////////Catgory Model////////////////
  ///////////////Catgory CPU//////////////////
  List<BottomCategoriesModle> cpuList = [];
  late BottomCategoriesModle cpuModle;
  
  Future<void> getCpuCategory() async {
    List<BottomCategoriesModle> newCpuList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categoriesmenu')
        .doc('hvDIlvFEs6COLfmh6Hs7')
        .collection('CPU')
        .get();
    querySnapshot.docs.forEach((element) {
      cpuModle = BottomCategoriesModle(
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
List<BottomCategoriesModle> mainboardList = [];
  late BottomCategoriesModle mainboardModle;
  
  Future<void> getMainboardCategory() async {
    List<BottomCategoriesModle> newMainboardList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categoriesmenu')
        .doc('hvDIlvFEs6COLfmh6Hs7')
        .collection('Mainboard')
        .get();
    querySnapshot.docs.forEach((element) {
      mainboardModle = BottomCategoriesModle(
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
List<BottomCategoriesModle> ramList = [];
  late BottomCategoriesModle ramModle;
  
  Future<void> getRamCategory() async {
    List<BottomCategoriesModle> newRamList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categoriesmenu')
        .doc('hvDIlvFEs6COLfmh6Hs7')
        .collection('Ram')
        .get();
    querySnapshot.docs.forEach((element) {
      ramModle = BottomCategoriesModle(
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
List<BottomCategoriesModle> vgaList = [];
  late BottomCategoriesModle vgaModle;
  
  Future<void> getVgaCategory() async {
    List<BottomCategoriesModle> newVgaList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categoriesmenu')
        .doc('hvDIlvFEs6COLfmh6Hs7')
        .collection('VGA')
        .get();
    querySnapshot.docs.forEach((element) {
      vgaModle = BottomCategoriesModle(
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
List<BottomCategoriesModle> ssdList = [];
  late BottomCategoriesModle ssdModle;
  
  Future<void> getSsdCategory() async {
    List<BottomCategoriesModle> newSsdList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categoriesmenu')
        .doc('hvDIlvFEs6COLfmh6Hs7')
        .collection('SSD')
        .get();
    querySnapshot.docs.forEach((element) {
      ssdModle = BottomCategoriesModle(
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
List<BottomCategoriesModle> powersupplyList = [];
  late BottomCategoriesModle powersupplyModle;
  
  Future<void> getPowersupplyCategory() async {
    List<BottomCategoriesModle> newPowersupplyList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categoriesmenu')
        .doc('hvDIlvFEs6COLfmh6Hs7')
        .collection('Power Supply')
        .get();
    querySnapshot.docs.forEach((element) {
      powersupplyModle = BottomCategoriesModle(
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
List<BottomCategoriesModle> caseList = [];
  late BottomCategoriesModle caseModle;
  
  Future<void> getCaseCategory() async {
    List<BottomCategoriesModle> newCaseList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('categoriesmenu')
        .doc('hvDIlvFEs6COLfmh6Hs7')
        .collection('Case')
        .get();
    querySnapshot.docs.forEach((element) {
      caseModle = BottomCategoriesModle(
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

  get throwCpuModleList {
    return productList;
  }
  //////////////End HomeScreen Product//////////////
  ///////////////CPU Categories List////////////////
  List<ProductCategoriesModel> cpuCategoriesList = [];
  late ProductCategoriesModel cpuCategoriesModle;
  Future<void> getCpuCategoriesList() async {
    List<ProductCategoriesModel> newCpuCategoriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('foodcategorieslist')
        .doc('0rriSlzfF27iaWTZnN15')
        .collection('CPU')
        .get();
    querySnapshot.docs.forEach((element) {
      cpuCategoriesModle = ProductCategoriesModel(
        productName: element.get("productName"),
        productDetail: element.get("productDetail"),
        productType: element.get("productType"),
        productPrice: element.get("productPrice"),
        productImage: element.get("productImage"),
      );
      newCpuCategoriesList.add(cpuCategoriesModle);
      cpuCategoriesList = newCpuCategoriesList;
    });
  }

  get throwCpuCategoriesList {
    return cpuCategoriesList;
  }
  ///////////End CPU Categories List////////////////
  ////////////MainBoard Categories List////////////////
  List<ProductCategoriesModel> mainboardCategoriesList = [];
  late ProductCategoriesModel mainboardCategoriesModle;
  Future<void> getMainboardCategoriesList() async {
    List<ProductCategoriesModel> newMainboardCategoriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('foodcategorieslist')
        .doc('0rriSlzfF27iaWTZnN15')
        .collection('Mainboard')
        .get();
    querySnapshot.docs.forEach((element) {
      mainboardCategoriesModle = ProductCategoriesModel(
        productName: element.get("productName"),
        productDetail: element.get("productDetail"),
        productType: element.get("productType"),
        productPrice: element.get("productPrice"),
        productImage: element.get("productImage"),
      );
      newMainboardCategoriesList.add(mainboardCategoriesModle);
      mainboardCategoriesList = newMainboardCategoriesList;
    });
  }

  get throwMainboardCategoriesList {
    return mainboardCategoriesList;
  }
  ///////////End MainBoard Categories List///////////
  ////////////Ram Categories List/////////////
  List<ProductCategoriesModel> ramCategoriesList = [];
  late ProductCategoriesModel ramCategoriesModle;
  Future<void> getRamCategoriesList() async {
    List<ProductCategoriesModel> newRamCategoriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('foodcategorieslist')
        .doc('0rriSlzfF27iaWTZnN15')
        .collection('Ram')
        .get();
    querySnapshot.docs.forEach((element) {
      ramCategoriesModle = ProductCategoriesModel(
        productName: element.get("productName"),
        productDetail: element.get("productDetail"),
        productType: element.get("productType"),
        productPrice: element.get("productPrice"),
        productImage: element.get("productImage"),
      );
      newRamCategoriesList.add(ramCategoriesModle);
      ramCategoriesList = newRamCategoriesList;
    });
  }

  get throwRamCategoriesList {
    return ramCategoriesList;
  }
  ///////////End Ram Categories List////////////////
  ////////////VGA Categories List/////////////
  List<ProductCategoriesModel> vgaCategoriesList = [];
  late ProductCategoriesModel vgaCategoriesModle;
  Future<void> getVgaCategoriesList() async {
    List<ProductCategoriesModel> newVgaCategoriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('foodcategorieslist')
        .doc('0rriSlzfF27iaWTZnN15')
        .collection('VGA')
        .get();
    querySnapshot.docs.forEach((element) {
      vgaCategoriesModle = ProductCategoriesModel(
        productName: element.get("productName"),
        productDetail: element.get("productDetail"),
        productType: element.get("productType"),
        productPrice: element.get("productPrice"),
        productImage: element.get("productImage"),
      );
      newVgaCategoriesList.add(vgaCategoriesModle);
      vgaCategoriesList = newVgaCategoriesList;
    });
  }

  get throwVgaCategoriesList {
    return vgaCategoriesList;
  }
  ///////////End VGA Categories List////////////////
  ////////////VGA Categories List/////////////
  List<ProductCategoriesModel> ssdCategoriesList = [];
  late ProductCategoriesModel ssdCategoriesModle;
  Future<void> getSsdCategoriesList() async {
    List<ProductCategoriesModel> newSsdCategoriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('foodcategorieslist')
        .doc('0rriSlzfF27iaWTZnN15')
        .collection('Ssd')
        .get();
    querySnapshot.docs.forEach((element) {
      ssdCategoriesModle = ProductCategoriesModel(
        productName: element.get("productName"),
        productDetail: element.get("productDetail"),
        productType: element.get("productType"),
        productPrice: element.get("productPrice"),
        productImage: element.get("productImage"),
      );
      newSsdCategoriesList.add(ssdCategoriesModle);
      ssdCategoriesList = newSsdCategoriesList;
    });
  }

  get throwSsdCategoriesList {
    return ssdCategoriesList;
  }
  ///////////End VGA Categories List////////////////
  ////////////Case Categories List/////////////
  List<ProductCategoriesModel> caseCategoriesList = [];
  late ProductCategoriesModel caseCategoriesModle;
  Future<void> getCaseCategoriesList() async {
    List<ProductCategoriesModel> newCaseCategoriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('foodcategorieslist')
        .doc('0rriSlzfF27iaWTZnN15')
        .collection('Case')
        .get();
    querySnapshot.docs.forEach((element) {
      caseCategoriesModle = ProductCategoriesModel(
        productName: element.get("productName"),
        productDetail: element.get("productDetail"),
        productType: element.get("productType"),
        productPrice: element.get("productPrice"),
        productImage: element.get("productImage"),
      );
      newCaseCategoriesList.add(caseCategoriesModle);
      caseCategoriesList = newCaseCategoriesList;
    });
  }

  get throwCaseCategoriesList {
    return caseCategoriesList;
  }
  ///////////End Case Categories List////////////////
   ////////////PowerSupply Categories List/////////////
  List<ProductCategoriesModel> powersupplyCategoriesList = [];
  late ProductCategoriesModel powersupplyCategoriesModle;
  Future<void> getPowersupplyCategoriesList() async {
    List<ProductCategoriesModel> newPowersupplyCategoriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('foodcategorieslist')
        .doc('0rriSlzfF27iaWTZnN15')
        .collection('Powersupply')
        .get();
    querySnapshot.docs.forEach((element) {
      powersupplyCategoriesModle = ProductCategoriesModel(
        productName: element.get("productName"),
        productDetail: element.get("productDetail"),
        productType: element.get("productType"),
        productPrice: element.get("productPrice"),
        productImage: element.get("productImage"),
      );
      newPowersupplyCategoriesList.add(powersupplyCategoriesModle);
      powersupplyCategoriesList = newPowersupplyCategoriesList;
    });
  }

  get throwPowersupplyCategoriesList {
    return powersupplyCategoriesList;
  }
  ///////////End Power Supply Categories List////////////////
  ////////// ADD Cart ////////
  List<CartModel> cartList = [];
  List<CartModel> newCartList = [];
  late CartModel cartModel;
  void addToCart({
    required String productName,
    required String productImage,
    required int productPrice,
    required int quantity,
  }) {
    cartModel = CartModel(
      productName: productName,
      productImage: productImage,
      productPrice: productPrice,
      quantity: quantity,
    );
    newCartList.add(cartModel);
    cartList = newCartList;
  }

  get throwCartList {
    return cartList;
  }

  int totalprice() {
    int total = 0;
    cartList.forEach((element) {
      total += element.productPrice * element.quantity;
    });
    return total;
  }
 late int deleteIndex;
 void getDeleteIndex(int index){
     deleteIndex=index;
 }
 void delete(int index){
   cartList.removeAt(deleteIndex);
   notifyListeners();
 }
}