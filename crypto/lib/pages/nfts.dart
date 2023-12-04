import 'package:crypto/constatns.dart';
import 'package:flutter/material.dart';

class NFTS extends StatefulWidget {
  const NFTS({super.key});

  @override
  State<NFTS> createState() => _NFTSState();
}

class _NFTSState extends State<NFTS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back)),
        title: const Text('NFTS'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: Text(data['nfts']?[index]['name'][0]),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['nfts']?[index]['name'] ?? '',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  data['nfts']?[index]['id'] ?? '',
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            ),
            trailing: Column(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['nfts']?[index]['floor_price_in_native_currency']
                            .toString()
                            .substring(0, 4) ??
                        '',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    data['nfts']?[index]['floor_price_24h_percentage_change']
                            .toString()
                            .substring(0, 6) ??
                        '',
                    style: Theme.of(context).textTheme.subtitle2,
                  )
                ],
              ),
            ]),
          );
        },
        itemCount: data['nfts']?.length,
      ),
    );
  }
}
