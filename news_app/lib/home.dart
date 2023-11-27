import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List? news;
  @override
  void initState() {
    getNews();
    super.initState();
  }

  void getNews() async {
    var response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=b4533f84855c4af3a040a96f624bc55b'));
    print(response.body);
    var wholeNews = jsonDecode(response.body);
    news = wholeNews['articles'];
    print(news);
  }

  Link link = Link('');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News App"),
      ),
      body: Container(
        color: const Color.fromARGB(255, 225, 227, 226),
        width: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              borderOnForeground: true,
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              color: Colors.blueAccent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      news?[index]['title'],
                      style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 1,
                              spreadRadius: 1)
                        ],
                        image: DecorationImage(
                          image: NetworkImage(
                            news?[index]['urlToImage'],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      news?[index]['description'],
                      style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text('Link: ${news?[index]['url']}'),
                  ],
                ),
              ),
            );
          },
          itemCount: news?.length,
        ),
      ),
    );
  }
}
