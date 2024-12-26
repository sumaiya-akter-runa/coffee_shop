import 'package:coffee_shop/admin/sign_in.dart';
import 'package:coffee_shop/admin/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../cart/cart_provider.dart';
import 'dashboard.dart';



void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      initialRoute: '/admin-signup',
      routes: {
        '/admin-signup': (context) => AdminSignUp(),
        '/admin-signin': (context) => AdminSignIn(),
        '/admin-dashboard': (context) => AdminDashboard(),
      },
    );
  }
}
