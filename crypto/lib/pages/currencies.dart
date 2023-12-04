import 'package:crypto/constatns.dart';
import 'package:flutter/material.dart';

class Currencies extends StatefulWidget {
  const Currencies({super.key});

  @override
  State<Currencies> createState() => _CurrenciesState();
}

class _CurrenciesState extends State<Currencies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back)),
        title: const Text('Currencies'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: Text(data['coins']?[index]['item']['name'][0]),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['coins']?[index]['item']['name'] ?? '',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  data['coins']?[index]['item']['symbol'] ?? '',
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            ),
            trailing: Column(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['coins']?[index]['item']['price_btc']
                            .toString()
                            .substring(0, 6) ??
                        '',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    data['coins']?[index]['item']['score'].toString() ?? '',
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ]),
          );
        },
        itemCount: data['coins']?.length,
      ),
    );
  }
}
