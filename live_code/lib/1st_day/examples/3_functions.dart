import 'package:meta/meta.dart';

void main() {
  /// Functions: required parameters. List of paramaters
  final sumResult = sum(1, 6);
  print(sumResult);

  /// Functions: named parameters
//  final result = divide(dividend: 24, divider: 6);
//  print(result);
//  print(result.runtimeType);

  /// Functions: required + named parameters
// final result = divide(dividend: 24, divider: 6);
//  print(result);
//  print(result.runtimeType);

  /// Anonymous Functions
  final list = [
    0,
    1,
    2,
  ];

  list.forEach((number) {
    print(number);
  });
  list.forEach(printNumber);
}

int sum(int a, int b) {
  return a + b;
}

int sumThreeInteger(int a, int b, {int c = 0}) {
  return a + b + c;
}

double divide({@required double dividend, @required double divider}) {
  return dividend / divider;
}

void printNumber(num number) {
  print(number);
}
