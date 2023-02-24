import 'package:delivery/providers/auth_provider.dart';
import 'package:delivery/providers/navi_bar_provider.dart';
import 'package:delivery/providers/product_provider.dart';
import 'package:delivery/routes/navigate.dart';
import 'package:delivery/screens/main_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider<NavibarProvider>(create: (_) => NavibarProvider(),),
      ChangeNotifierProvider<AuthWithProvider>(create: (_) => AuthWithProvider(),),
      ChangeNotifierProvider<ProductProvider>(create: (_) => ProductProvider(),),
    ],child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      routes: Navigate.routes,
    );
  }
}
