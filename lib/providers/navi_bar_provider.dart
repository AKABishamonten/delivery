import 'package:delivery/screens/auth/login_screen.dart';
import 'package:delivery/screens/auth/profile_screen.dart';
import 'package:delivery/screens/basket_screen.dart';
import 'package:delivery/screens/home_screen.dart';

import 'package:flutter/material.dart';

class NavibarProvider extends ChangeNotifier{
  List<NavibarDTO> items = [
    NavibarDTO(label: 'Home', widget: HomeScreen(),iconData: Icons.home),
    NavibarDTO(label: 'Basket', widget: BasketScreen(),iconData: Icons.shopping_basket),
    NavibarDTO(label: 'Profile', widget: ProfileScreen(),iconData: Icons.person_outline),
  ];
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }
  
}

class NavibarDTO{
  Widget? widget;
  String? label;
 IconData? iconData;

 NavibarDTO({this.widget, this.label, this.iconData});
}