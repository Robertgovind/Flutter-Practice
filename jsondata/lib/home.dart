import 'dart:convert';

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
        title: const Text('JSON Data'),
      ),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('jsondata/data.json'),
        builder: (context, AsyncSnapshot snapshot) {
          var data = json.decode(snapshot.data.toString());
          return ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Name: ${data[index]['name']}"),
                    Text("Age: ${data[index]['age']}"),
                    Text("Roll No: ${data[index]['rollno']}"),
                    Text("Address: ${data[index]['address']}"),
                    Text("Gender: ${data[index]['sex']}"),
                  ],
                ),
              );
            },
            itemCount: 48,
          );
        },
      ),
    );
  }
}
