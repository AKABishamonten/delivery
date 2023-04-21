import 'package:delivery/screens/location/add_location.dart';
import 'package:delivery/screens/location/location.dart';
import 'package:delivery/screens/auth/login_screen.dart';
import 'package:delivery/screens/auth/profile_screen.dart';
import 'package:delivery/screens/basket_screen.dart';
import 'package:delivery/screens/categories_screen.dart';
import 'package:delivery/screens/detail_screen.dart';
import 'package:delivery/screens/home_screen.dart';
import 'package:delivery/screens/payment/payment.dart';

import 'package:flutter/material.dart';

import 'package:delivery/screens/main_screen.dart';

class Navigate {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/LoginScreen': (BuildContext context) => LoginScreen(),
    '/MainScreen': (BuildContext context) => MainScreen(),
    '/ProfileScreen': (BuildContext context) =>  ProfileScreen(),
    '/HomeScreen': (BuildContext context) => const HomeScreen(),
    '/BasketScreen': (BuildContext context) => BasketScreen(),
    '/DetailScreen': (BuildContext context) => DetailScreen(productDetail: '', productImage: '', productName: '', productPrice: '' as int, productType: '',),
    '/Categories': (BuildContext context) => Categories(list: [],),
    '/Location': (BuildContext context) => Location(),
    '/AddLocation': (BuildContext context) => AddLocation(),
  };
}