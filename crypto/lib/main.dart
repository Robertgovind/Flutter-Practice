import 'package:crypto/pages/currencies.dart';
import 'package:crypto/pages/exchanges.dart';
import 'package:crypto/pages/home.dart';
import 'package:crypto/pages/nfts.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/currencies': (context) => const Currencies(),
        '/nfts': (context) => const NFTS(),
        '/exchanges': (context) => const Exchanges(),
      },
      title: 'Cryptocurrency App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}
