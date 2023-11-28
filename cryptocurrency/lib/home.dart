import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String apiKey = '19187f58-afaf-4d3a-9881-4caea5d7cea7';

  String url =
      'https://sandbox-api.coinmarketcap.com/v1/cryptocurrency/listings/latest';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: const Text('Crytocurrency App'),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return const ListTile(
            tileColor: Colors.blueGrey,
            leading: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 35,
              child: Text(
                'T',
                style: TextStyle(fontSize: 24),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Title',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Subhead',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            subtitle: Text('Subtitle'),
            trailing: Column(
              children: [
                Text(
                  '\$500',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '+6.0%',
                  style: TextStyle(
                      color: Color.fromARGB(255, 8, 215, 14),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}
