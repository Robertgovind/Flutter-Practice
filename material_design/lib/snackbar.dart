import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              const SnackBar(content: Text('this is snackbar'));
            },
            child: const Text('Show Snackbar'),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const AlertDialog(
                      title: Text('Alert Dialog'),
                      content:
                          Text('This is an alert dialog whic appers on click'),
                    );
                  });
            },
            child: const Text('Show AlertDialogue'),
          ),
        ],
      ),
    );
  }
}
