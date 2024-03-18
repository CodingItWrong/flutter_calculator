import "package:flutter/material.dart";
import "calculator.dart";

class ExpandedButton extends StatelessWidget {
  const ExpandedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.style,
  });

  final Widget child;
  final VoidCallback onPressed;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: TextButton(
        onPressed: onPressed,
        style: style,
        child: child,
      ),
    );
  }
}

class ExpandedRow extends StatelessWidget {
  const ExpandedRow({
    super.key,
    required this.children,
    required this.crossAxisAlignment,
  });

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

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Calculator",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black26,
        ),
        useMaterial3: false,
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
  String _str = "0";
  var _calculation = Calculation();

  void add(String a) {
    setState(() {
      _calculation.add(a);
      _str = _calculation.getString();
    });
  }

  void deleteAll() {
    setState(() {
      _calculation.deleteAll();
      _str = _calculation.getString();
    });
  }

  void deleteOne() {
    setState(() {
      _calculation.deleteOne();
      _str = _calculation.getString();
    });
  }

  void getResult() {
    setState(() {
      try {
        _str = _calculation.getResult().toString();
      } on DivideByZeroException {
        _str = "You mustn't divide by 0";
      } finally {
        _calculation = Calculation();
      }
    });
  }

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
                  child: TextButton(
                    onPressed: () {
                      deleteAll();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black54,
                    ),
                    child: const Text(
                      'C',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      deleteOne();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black87,
                    ),
                    child: const Text(
                      '<-',
                      style: TextStyle(color: Colors.white),
                    ),
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
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                            ),
                            child: const Text(
                              '7',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              add('8');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                            ),
                            child: const Text(
                              '8',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              add('9');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                            ),
                            child: const Text(
                              '9',
                              style: TextStyle(color: Colors.white),
                            ),
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
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                            ),
                            child: const Text(
                              '4',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              add('5');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                            ),
                            child: const Text(
                              '5',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              add('6');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                            ),
                            child: const Text(
                              '6',
                              style: TextStyle(color: Colors.white),
                            ),
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
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                            ),
                            child: const Text(
                              '1',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              add('2');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                            ),
                            child: const Text(
                              '2',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              add('3');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                            ),
                            child: const Text(
                              '3',
                              style: TextStyle(color: Colors.white),
                            ),
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
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                            ),
                            child: const Text(
                              '0',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              add('.');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                            ),
                            child: const Text(
                              '.',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          ExpandedButton(
                            onPressed: () {
                              getResult();
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue[50],
                            ),
                            child: const Text(
                              '=',
                              style: TextStyle(color: Colors.black),
                            ),
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
                        onPressed: () {
                          add('÷');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[50],
                        ),
                        child: Image.asset(
                          "icons/divide.png",
                          width: 10.0,
                          height: 10.0,
                        ),
                      ),
                      ExpandedButton(
                        onPressed: () {
                          add('x');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[50],
                        ),
                        child: const Text(
                          'x',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ExpandedButton(
                        onPressed: () {
                          add('-');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[50],
                        ),
                        child: const Text(
                          '-',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ExpandedButton(
                        onPressed: () {
                          add('+');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[50],
                        ),
                        child: const Text(
                          '+',
                          style: TextStyle(color: Colors.black),
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
}
