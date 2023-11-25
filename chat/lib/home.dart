import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text(
          'Chat App',
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter message',
                      labelStyle:
                          const TextStyle(fontSize: 18, color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    controller: message,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                IconButton(
                  onPressed: () {
                    message.clear();
                  },
                  icon: const Icon(
                    Icons.send,
                    size: 35,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
