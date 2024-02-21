import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

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
          Expanded(
            flex: 2,
            child: Card(
              color: Colors.lightGreen[50],
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  _str,
                  textScaler: const TextScaler.linear(2.0),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 3,
                  child: ElevatedButton(
                    onPressed: () {
                      deleteAll();
                    },
                    child: const Text('C'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      deleteOne();
                    },
                    child: const Text('<-'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  add('7');
                                },
                                child: const Text('7'),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  add('8');
                                },
                                child: const Text('8'),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  add('9');
                                },
                                child: const Text('9'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  add('4');
                                },
                                child: const Text('4'),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  add('5');
                                },
                                child: const Text('5'),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  add('6');
                                },
                                child: const Text('6'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  add('1');
                                },
                                child: const Text('1'),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  add('2');
                                },
                                child: const Text('2'),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  add('3');
                                },
                                child: const Text('3'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  add('0');
                                },
                                child: const Text('0'),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  add('.');
                                },
                                child: const Text('.'),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  getResult();
                                },
                                child: const Text('='),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          child: Image.asset(
                            "icons/divide.png",
                            width: 10.0,
                            height: 10.0,
                          ),
                          onPressed: () {
                            add('÷');
                          },
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            add('x');
                          },
                          child: const Text('x'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            add('-');
                          },
                          child: const Text('-'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            add('+');
                          },
                          child: const Text('+'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
