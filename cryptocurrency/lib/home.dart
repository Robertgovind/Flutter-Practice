import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String apiKey = '19187f58-afaf-4d3a-9881-4caea5d7cea7';

  String url =
      'https://sandbox-api.coinmarketcap.com/v1/cryptocurrency/listings/latest';

  Map<String, dynamic>? data;
  String? title;
  String? id;
  String? symbol;
  String? price;
  String? latsPrice;

  @override
  void initState() {
    getCurrency();
    super.initState();
  }

  void getCurrency() async {
    final response = await http.get(Uri.parse(url), headers: {
      'X-CMC_PRO_API_KEY': apiKey,
      'Accept': 'application/json',
    });
    // print(response.body);
    data = json.decode(response.body);

    title = data?['data'][0]['name'];
    id = data?['data'][0]['id'];
    symbol = data?['data'][0]['symbol'];
    price = data?['data'][0]['quote']['USD']['price'];
    latsPrice = data?['data'][0]['quote']['USD']['percent_change_1h'];
    setState(() {});
  }

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
          return ListTile(
            tileColor: Colors.white,
            leading: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 35,
              child: Text(
                title?[0] ?? '',
                style: const TextStyle(fontSize: 24),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? '',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  id ?? '',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            subtitle: Text(symbol ?? ''),
            trailing: Column(
              children: [
                Text(
                  price ?? '',
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  latsPrice ?? '',
                  style: const TextStyle(
                      color: Color.fromARGB(255, 8, 215, 14),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          );
        },
        itemCount: data?.length,
      ),
    );
  }
}
