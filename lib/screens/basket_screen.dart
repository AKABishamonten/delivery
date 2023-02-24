import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    print(FirebaseAuth.instance.currentUser);
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Basket Screen', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
          ],
        ),
      )
    );
  }
}