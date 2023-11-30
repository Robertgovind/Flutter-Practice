import 'package:flutter/material.dart';
import 'package:flutter_redux/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Redux Tutorial',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.purple),
      home: Home(),
    );
  }
}
