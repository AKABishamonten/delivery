import 'package:delivery/screens/categories_screen.dart';
import 'package:delivery/screens/detail_screen.dart';
import 'package:delivery/screens/home_screen.dart';
import 'package:delivery/screens/location_screen.dart';
import 'package:delivery/screens/register.dart';
import 'package:delivery/screens/setting_screen.dart';
import 'package:delivery/widgets/location_bar.dart';
import 'package:flutter/material.dart';
import 'package:delivery/screens/profile_screen.dart';
import 'package:delivery/screens/main_screen.dart';

class Navigate {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/LocationBar': (BuildContext context) => const LocationBar(),
    '/ProfileScreen': (BuildContext context) => const ProfileScreen(),
    '/MainScreen': (BuildContext context) => const MainScreen(),
    '/Register': (BuildContext context) => const RegisterPage(),
    '/SettingProfile': (BuildContext context) => const SettingProfile(),
    '/HomeScreen': (BuildContext context) => const HomeScreen(),
    '/LocationScreen': (BuildContext context) => LocationScreen(),
    '/DetailScreen': (BuildContext context) => const DetailScreen(productDetail: '', productImage: '', productName: '', productPrice: '', productType: '',),
    '/Categories': (BuildContext context) => Categories(list: [], productDetail: '', productImage: '', productName: '', productPrice: '', productType: '',)

  };
}