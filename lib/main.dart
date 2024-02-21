import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Calculator",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorHomePage(
        title: "Flutter Calculator",
      ),
    );
  }
}

class CalculatorHomePage extends StatefulWidget {
  const CalculatorHomePage({super.key, required this.title});
  final String title;

  @override
  State<CalculatorHomePage> createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  final String _str = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            color: Colors.lightGreen[50],
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                _str,
                textScaler: const TextScaler.linear(2.0),
              ),
            ),
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  deleteAll();
                },
                child: const Text('C'),
              ),
              ElevatedButton(
                onPressed: () {
                  deleteOne();
                },
                child: const Text('<-'),
              ),
            ],
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          add('7');
                        },
                        child: const Text('7'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          add('8');
                        },
                        child: const Text('8'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          add('9');
                        },
                        child: const Text('9'),
                      ),
                    ],
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          add('4');
                        },
                        child: const Text('4'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          add('5');
                        },
                        child: const Text('5'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          add('6');
                        },
                        child: const Text('6'),
                      ),
                    ],
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          add('1');
                        },
                        child: const Text('1'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          add('2');
                        },
                        child: const Text('2'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          add('3');
                        },
                        child: const Text('3'),
                      ),
                    ],
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          add('0');
                        },
                        child: const Text('0'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          add('.');
                        },
                        child: const Text('.'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          getResult();
                        },
                        child: const Text('='),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    child: Image.asset(
                      "icons/divide.png",
                      width: 10.0,
                      height: 10.0,
                    ),
                    onPressed: () {
                      add('÷');
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      add('x');
                    },
                    child: const Text('x'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      add('-');
                    },
                    child: const Text('-'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      add('+');
                    },
                    child: const Text('+'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void add(String a) {}

  void deleteAll() {}

  void deleteOne() {}

  void getResult() {}
}
