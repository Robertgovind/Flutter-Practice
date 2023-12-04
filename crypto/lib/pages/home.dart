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
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/currencies'),
              child: const TabsContainer(
                title: 'Currencies',
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/nfts'),
              child: const TabsContainer(
                title: 'NFTS',
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/exchanges'),
              child: const TabsContainer(
                title: 'Exchanges',
              ),
            ),
          ],
        ));
  }
}

class TabsContainer extends StatelessWidget {
  const TabsContainer({
    super.key,
    required this.title,
  });
  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(18),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        border: Border.all(width: 3),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
