import 'package:flutter/material.dart';
import 'package:material_design/stepper.dart';
import 'package:material_design/tabbar.dart';

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
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Title(
                    color: Colors.black,
                    child: const Text('Snack Bar'),
                  ),
                  duration: const Duration(seconds: 5),
                ),
              );
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
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showMaterialBanner(
                const MaterialBanner(
                  content: Text('This is material banner'),
                  actions: [
                    Text('ok'),
                    Text('cancel'),
                  ],
                ),
              );
            },
            child: const Text('MaterialBanner'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Steppers();
              }));
            },
            child: const Text('Stepper'),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return TabBarNavigation();
                }));
              },
              child: const Text('Navigation bar')),
        ],
      ),
    );
  }
}
