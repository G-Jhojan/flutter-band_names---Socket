import 'package:flutter/material.dart';
import 'package:flutter_own_test/screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test App',
      initialRoute: 'Home',
      routes: {
        'Home':(context) => const HomeScreen()
      },
      
      
    );
  }
}