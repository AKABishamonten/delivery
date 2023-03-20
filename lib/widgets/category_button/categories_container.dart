import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CategoriesContainer extends StatelessWidget {

  String name;
  String image;
  final onTap; 

  CategoriesContainer({
    required this.name,
    required this.image,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Row(
          children: [
            Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Container(
                    padding: EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(blurRadius: 4)],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Image.network(image, height: 25, width: 25,),
                        SizedBox(height: 20,),
                        Text(name, style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    )
                  ),
                ),
          ],
        ),
      ),
    );
  }
}