import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/example/providers/shopping_provider.dart';
import 'package:todo_list/example/screens/shop_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ShoppingProvider()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ShopScreen(),
      ),
    );
  }
}
