import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Snackbar and AlertDialogue'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                const SnackBar(
                  content: Text('This is a snackbar.'),
                );
              },
              child:const Text('Show Snackbar'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Show AlertDialogue'),
            ),
          ],
        ));
  }
}
