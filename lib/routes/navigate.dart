import 'package:delivery/screens/auth/login_screen.dart';
import 'package:delivery/screens/auth/profile_screen.dart';
import 'package:delivery/screens/basket_screen.dart';
import 'package:delivery/screens/categories_screen.dart';
import 'package:delivery/screens/detail_screen.dart';
import 'package:delivery/screens/home_screen.dart';
import 'package:delivery/screens/location_screen.dart';
import 'package:delivery/screens/register.dart';

import 'package:delivery/widgets/location_bar.dart';
import 'package:flutter/material.dart';

import 'package:delivery/screens/main_screen.dart';

class Navigate {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/LocationBar': (BuildContext context) => const LocationBar(),
    '/LoginScreen': (BuildContext context) => LoginScreen(),
    '/MainScreen': (BuildContext context) => MainScreen(),
    '/Register': (BuildContext context) => const RegisterPage(),
    '/ProfileScreen': (BuildContext context) =>  ProfileScreen(),
    '/HomeScreen': (BuildContext context) => const HomeScreen(),
    '/LocationScreen': (BuildContext context) => LocationScreen(),
    '/BasketScreen': (BuildContext context) => BasketScreen(),
    '/DetailScreen': (BuildContext context) => DetailScreen(productDetail: '', productImage: '', productName: '', productPrice: '' as int, productType: '',),
    '/Categories': (BuildContext context) => Categories(list: [],)

  };
}