import 'package:delivery/providers/navi_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

    @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    final np = Provider.of<NavibarProvider>(context);
    return Scaffold(
      body: np.items[np.selectedIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        currentIndex: np.selectedIndex,
        onTap: (i){
          np.selectedIndex = i;
        },
          items: np.items
              .map((e) => BottomNavigationBarItem(
                backgroundColor: Colors.orangeAccent,
                  icon: Icon(e.iconData), label: e.label))
              .toList()),
    );
  }
}
