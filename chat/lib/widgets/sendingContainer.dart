import 'package:flutter/material.dart';

class SendingContainer extends StatelessWidget {
  const SendingContainer({
    super.key,
    required this.message,
  });

  final TextEditingController message;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Enter message',
              labelStyle: const TextStyle(fontSize: 18, color: Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22.0),
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
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
