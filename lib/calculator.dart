class Calculation {
  List<String> a = [];
  final RegExp regExp = RegExp("[+\\-x÷]");

  void add(String added) {
    if (a.isEmpty) {
      // empty buffer
      if (!regExp.hasMatch(added)) {
        // only add numbers because can't start with an operator
        a.add(added);
      }
    } else if (regExp.hasMatch(a.last)) {
      // buffer ends with an operator
      if (!RegExp("[+\\-x÷.]").hasMatch(added)) {
        // only add numbers because can't have two operators in a row
        a.add(added);
      }
    } else {
      // buffer ends with a number
      if (regExp.hasMatch(added)) {
        // adding an operator
        if (!RegExp(".").hasMatch(a.last)) {
          // it's a dot, so add a dot-zero
          a.last += ".0";
        }
        a.add(added);
      } else {
        // adding a digit, just append it
        a.last += added;
      }
    }
  }

  String getString() {
    String str = "";
    for (final el in a) {
      str += el;
    }
    return str;
  }

  void deleteAll() => a = [];

  void deleteOne() {
    if (a.isNotEmpty) {
      if (a.last.length > 1) {
        a.last = a.last.substring(0, a.last.length - 1);
      } else {
        a.removeLast();
      }
    }
  }

  double getResult() {
    if (regExp.hasMatch(a.last)) {
      a.removeLast();
    }

    if (a.last.lastIndexOf(".") == a.last.length - 1) {
      a.last = a.last.substring(0, a.length - 1);
    }

    for (int i = 0; i < a.length; i++) {
      if (a[i] == "x") {
        a[i - 1] = "${double.parse(a[i - 1]) * double.parse(a[i + 1])}";
        a.removeAt(i);
        a.removeAt(i);
        i--;
      } else if (a[i] == "÷") {
        a[i - 1] = "${double.parse(a[i - 1]) / double.parse(a[i + 1])}";
        a.removeAt(i);
        a.removeAt(i);
        i--;
      }
    }

    for (int i = 0; i < a.length; i++) {
      if (a[i] == "+") {
        a[i - 1] = "${double.parse(a[i - 1]) + double.parse(a[i + 1])}";
        a.removeAt(i);
        a.removeAt(i);
        i--;
      } else if (a[i] == "-") {
        a[i - 1] = "${double.parse(a[i - 1]) - double.parse(a[i + 1])}";
        a.removeAt(i);
        a.removeAt(i);
        i--;
      }
    }

    if (a.length != 1) {
      throw Error();
    }

    return double.parse(a[0]);
  }
}
