import 'package:flutter/material.dart';

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
          title: const Text('Crypto Currency'),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(18),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(width: 3),
                borderRadius: BorderRadius.circular(13),
              ),
              child: const Center(
                child: Text(
                  'Currencies',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(18),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(width: 3),
                borderRadius: BorderRadius.circular(13),
              ),
              child: const Center(
                child: Text(
                  'NFTS',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(18),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(width: 3),
                borderRadius: BorderRadius.circular(13),
              ),
              child: const Center(
                child: Text(
                  'Exchanges',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
