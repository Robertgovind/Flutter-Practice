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
        title:const Text('JSON Data'),
      ),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('jsondata/data.json'),
        builder: (context, AsyncSnapshot snapshot) {
          var data = json.decode(snapshot.data.toString());
          return ListView.builder(
            itemBuilder: (context, int index) {
              return Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Name: ${data['name']}"),
                    Text("Age: ${data['age']}"),
                    Text("Roll No: ${data['rollno']}"),
                    Text("Address: ${data['address']}"),
                    Text("Gender: ${data['sex']}"),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
