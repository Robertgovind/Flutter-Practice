import 'package:flutter/material.dart';
import 'package:material_design/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar and AlertDialogue',
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
