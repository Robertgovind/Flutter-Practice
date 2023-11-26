import 'package:chat/widgets/massages.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController massageController = TextEditingController();

  List<Messages> massages = [];
  String text = '';

  void onSend() {
    Messages msg = Messages(
      message: text,
    );
    massages.insert(0, msg);
    print(text);
    setState(() {});
  }

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
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return massages[index];
                },
                itemCount: massages.length,
                reverse: true,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter message',
                      labelStyle:
                          const TextStyle(fontSize: 18, color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      suffixIcon: Icon(Icons.camera_alt_rounded),
                      suffixIconColor: Colors.white,
                    ),
                    controller: massageController,
                    onChanged: (value) {
                      text = value;
                    },
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                IconButton(
                  onPressed: () {
                    massageController.clear();
                    onSend();
                  },
                  icon: const Icon(
                    Icons.send,
                    size: 35,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
