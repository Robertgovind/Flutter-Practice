import 'package:flutter/material.dart';

class Steppers extends StatelessWidget {
  const Steppers({super.key});

  final List<Step> stepList = const [
    Step(
      title: Text('Step 1'),
      content: Text('This is first step'),
    ),
    Step(
      title: Text('Step 2'),
      content: Text('This is second step'),
    ),
    Step(
      title: Text('Step 3'),
      content: Text('This is third step'),
    ),
    Step(
      title: Text('Step 4'),
      content: Text('This is fourth step'),
    ),
  ];
  final int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stepper(
          steps: stepList,
          currentStep: currentIndex,
        ),
      ),
    );
  }
}
