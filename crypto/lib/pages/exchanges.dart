import 'package:flutter/material.dart';

class Exchanges extends StatefulWidget {
  const Exchanges({super.key});

  @override
  State<Exchanges> createState() => _ExchangesState();
}

class _ExchangesState extends State<Exchanges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Exchanges'),
      ),
    );
  }
}
