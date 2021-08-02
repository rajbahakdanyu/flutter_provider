import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_tutorial/providers/counter_provider.dart';
import 'package:provider_tutorial/providers/shopping_cart_provider.dart';
import 'package:provider_tutorial/screens/home_screen.dart';
import 'package:provider_tutorial/screens/second_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => ShoppingCart()),
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
      title: 'Provider Tutorial',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}
