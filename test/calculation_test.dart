import "package:flutter_test/flutter_test.dart";
import "package:flutter_calculator/calculator.dart";

var calc = Calculation();

void main() {
  setUp(() {
    calc = Calculation();
  });

  test('simple addition', () {
    calc.add("5");
    calc.add("+");
    calc.add("6");
    calc.add("5");
    expect(calc.getResult(), 70.0);
  });
}
