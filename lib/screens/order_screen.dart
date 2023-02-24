import 'package:flutter/material.dart';


class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);


@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Order Screen', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
          ],
        ),
      )
    );
  }
}