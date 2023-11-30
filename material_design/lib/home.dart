import 'package:flutter/material.dart';
import 'package:material_design/body.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Snackbar and AlertDialogue'),
        ),
        body: 
        const Body());
  }
}

