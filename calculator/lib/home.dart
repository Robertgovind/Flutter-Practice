import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1 = TextEditingController();

  TextEditingController n2 = TextEditingController();

  var number1 = '0', number2 = '0', output = '';
  void calculate(String operator) {
    var firstNumber = int.parse(number1);
    var secondNumber = int.parse(number2);

    var result;
    if (operator == '+') {
      result = firstNumber + secondNumber;
      output = result.toString();
    } else if (operator == '-') {
      result = firstNumber - secondNumber;
      output = result.toString();
    } else if (operator == '*') {
      result = firstNumber * secondNumber;
      output = result.toString();
    } else if (operator == '/') {
      result = firstNumber / secondNumber;
      output = result.toString();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 93, 43, 123),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              padding: EdgeInsets.only(top: 20, right: 8),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                output,
                style: const TextStyle(
                    fontSize: 40, color: Colors.white, letterSpacing: 1),
                textAlign: TextAlign.right,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'First number',
                  labelStyle:
                      const TextStyle(fontSize: 18, color: Colors.white)),
              keyboardType: TextInputType.number,
              controller: n1,
              onChanged: (value) {
                number1 = value;
              },
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Second number',
                  labelStyle:
                      const TextStyle(color: Colors.white, fontSize: 18)),
              keyboardType: TextInputType.number,
              controller: n2,
              onChanged: (value) {
                number2 = value;
              },
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    n1.clear();
                    n2.clear();
                    calculate('+');
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text(
                      '+',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    n1.clear();
                    n2.clear();
                    calculate('-');
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text(
                      '-',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    n1.clear();
                    n2.clear();
                    calculate('*');
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text(
                      '*',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    n1.clear();
                    n2.clear();
                    calculate('/');
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text(
                      '/',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
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
