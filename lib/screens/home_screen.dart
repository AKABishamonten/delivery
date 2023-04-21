import 'package:delivery/widgets/category_button/button_category_widget.dart';
import 'package:delivery/widgets/grid_product.dart';
import 'package:delivery/widgets/image_silde.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30,),
          ImageSilde(),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 15, bottom: 15),
            child: Text('Category', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orangeAccent, fontSize: 20),),
          ),
          CategoryWidget(),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 15,),
            child: Text('Recommended for you', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orangeAccent, fontSize: 20),),
          ),
          GridPokemon()
        ],
      ),
    );
  }
}
