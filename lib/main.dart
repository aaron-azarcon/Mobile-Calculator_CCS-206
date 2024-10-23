import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int sum = 0;

  TextEditingController add1Controller = TextEditingController();
  TextEditingController add2Controller = TextEditingController();

  int firstAddNum = 0;
  int secondAddNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            Text(
                "Calculator",
                style: TextStyle(
                fontSize: 30,
                color: Colors.green[900],
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 70),

            Text(
              "Addition",
              style: TextStyle(
                fontSize: 18,
                color: Colors.green[900],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: TextField(
                    controller: add1Controller,
                    decoration: const InputDecoration(hintText: "First Number"),
                    onChanged: (value) {
                      setState(() {
                        firstAddNum = int.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ),
                const Text(" + "),
                Expanded(
                  child: TextField(
                    controller: add2Controller,
                    decoration: const InputDecoration(hintText: "Second Number"),
                    onChanged: (value) {
                      setState(() {
                        secondAddNum = int.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ),
                Text(
                    ' = $sum',
                    style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),

                // 3.a Add an IconButton here
                IconButton(
                  icon: const Icon(Icons.calculate),
                  onPressed: () {
                    setState(() {
                      sum = firstAddNum + secondAddNum;
                    });
                  },
                ),
                // 3.b Add clear button here
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      add1Controller.clear();
                      add2Controller.clear();
                      firstAddNum = 0;
                      secondAddNum = 0;
                      sum = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text("Clear"),
                )
              ],
            ),
            // 3.c - Add the other operations
            // Minus Row

            // Multiplication Row

            // Division Row
          ],
        ),
      ),
    );
  }
}
