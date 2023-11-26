import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  Messages({
    super.key,
    required this.message,
  });
  final String message;
  String name = 'Govind';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      decoration: const BoxDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Text(name[0]),
          ),
          const SizedBox(
            width: 6,
          ),
          Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                    color: Colors.white),
              ),
              Text(
                message,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70),
              ),
            ],
          )
        ],
      ),
    );
  }
}
