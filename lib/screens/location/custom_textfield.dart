import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextField extends StatelessWidget {

  final TextEditingController controller;
  final String labText;


  CustomTextField({
    Key? key, 
    required this.controller, 
    required this.labText, 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labText
      ),
    );
  }
}