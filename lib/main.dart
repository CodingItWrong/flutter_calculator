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
                      ExpandedRow(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ExpandedButton(
                            onPressed: () {
                              add('7');
                            },
                            child: const Text('7'),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              add('8');
                            },
                            child: const Text('8'),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              add('9');
                            },
                            child: const Text('9'),
                          ),
                        ],
                      ),
                      ExpandedRow(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ExpandedButton(
                            onPressed: () {
                              add('4');
                            },
                            child: const Text('4'),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              add('5');
                            },
                            child: const Text('5'),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              add('6');
                            },
                            child: const Text('6'),
                          ),
                        ],
                      ),
                      ExpandedRow(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ExpandedButton(
                            onPressed: () {
                              add('1');
                            },
                            child: const Text('1'),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              add('2');
                            },
                            child: const Text('2'),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              add('3');
                            },
                            child: const Text('3'),
                          ),
                        ],
                      ),
                      ExpandedRow(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ExpandedButton(
                            onPressed: () {
                              add('0');
                            },
                            child: const Text('0'),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              add('.');
                            },
                            child: const Text('.'),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              getResult();
                            },
                            child: const Text('='),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ExpandedButton(
                        child: Image.asset(
                          "icons/divide.png",
                          width: 10.0,
                          height: 10.0,
                        ),
                        onPressed: () {
                          add('÷');
                        },
                      ),
                      ExpandedButton(
                        onPressed: () {
                          add('x');
                        },
                        child: const Text('x'),
                      ),
                      ExpandedButton(
                        onPressed: () {
                          add('-');
                        },
                        child: const Text('-'),
                      ),
                      ExpandedButton(
                        onPressed: () {
                          add('+');
                        },
                        child: const Text('+'),
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

class ExpandedButton extends StatelessWidget {
  const ExpandedButton(
      {super.key, required this.onPressed, required this.child});

  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}

class ExpandedRow extends StatelessWidget {
  const ExpandedRow(
      {super.key, required this.children, required this.crossAxisAlignment});

  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: crossAxisAlignment,
        children: children,
      ),
    );
  }
}
