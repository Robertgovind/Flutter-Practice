import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});
  final String name = 'Govind';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Row(children: [
        CircleAvatar(
          child: Text(name[0]),
        ),
      ]),
    );
  }
}
