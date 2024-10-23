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
  int difference = 0;
  double product = 0;
  double quotient = 0;

  TextEditingController add1Controller = TextEditingController();
  TextEditingController add2Controller = TextEditingController();

  TextEditingController sub1Controller = TextEditingController();
  TextEditingController sub2Controller = TextEditingController();

  TextEditingController factor1Controller = TextEditingController();
  TextEditingController factor2Controller = TextEditingController();

  TextEditingController dividendController = TextEditingController();
  TextEditingController divisorController = TextEditingController();

  int firstAddNum = 0;
  int secondAddNum = 0;

  int firstSubNum = 0;
  int secondSubNum = 0;

  double firstMultiplyNum = 0;
  double secondMultiplyNum = 0;

  double firstDivNum = 0;
  double secondDivNum = 0;

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
            const SizedBox(height: 40),

            Text(
              "Subtraction",
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
                    controller: sub1Controller,
                    decoration: const InputDecoration(hintText: "First Number"),
                    onChanged: (value) {
                      setState(() {
                        firstSubNum = int.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ),
                const Text(" - "),
                Expanded(
                  child: TextField(
                    controller: sub2Controller,
                    decoration: const InputDecoration(hintText: "Second Number"),
                    onChanged: (value) {
                      setState(() {
                        secondSubNum = int.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ),
                Text(
                  ' = $difference',
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
                      difference = firstSubNum - secondSubNum;
                    });
                  },
                ),
                // 3.b Add clear button here
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sub1Controller.clear();
                      sub2Controller.clear();
                      firstSubNum = 0;
                      secondSubNum = 0;
                      difference = 0;
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
            // Multiplication Row
            const SizedBox(height: 40),

            Text(
              "Multiplication",
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
                    controller: factor1Controller,
                    decoration: const InputDecoration(hintText: "First Number"),
                    onChanged: (value) {
                      setState(() {
                        firstMultiplyNum = double.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ),
                const Text(" * "),
                Expanded(
                  child: TextField(
                    controller: factor2Controller,
                    decoration: const InputDecoration(hintText: "Second Number"),
                    onChanged: (value) {
                      setState(() {
                        secondMultiplyNum = double.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ),
                Text(
                  ' = $product',
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
                      product = firstMultiplyNum * secondMultiplyNum;
                    });
                  },
                ),
                // 3.b Add clear button here
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      factor1Controller.clear();
                      factor2Controller.clear();
                      firstMultiplyNum = 0;
                      secondMultiplyNum = 0;
                      product = 0;
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
            // Division Row

            const SizedBox(height: 40),

            Text(
              "Division",
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
                    controller: dividendController,
                    decoration: const InputDecoration(hintText: "First Number"),
                    onChanged: (value) {
                      setState(() {
                        firstDivNum = double.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ),
                const Text(" / "),
                Expanded(
                  child: TextField(
                    controller: divisorController,
                    decoration: const InputDecoration(hintText: "Second Number"),
                    onChanged: (value) {
                      setState(() {
                        secondDivNum = double.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ),
                Text(
                  ' = $quotient',
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
                      quotient = firstDivNum / secondDivNum;
                    });
                  },
                ),
                // 3.b Add clear button here
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      dividendController.clear();
                      divisorController.clear();
                      firstDivNum = 0;
                      secondDivNum = 0;
                      quotient = 0;
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
          ],
        ),
      ),
    );
  }
}
