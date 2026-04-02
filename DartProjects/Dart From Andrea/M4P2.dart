enum Operation { plus, minus, multiply, divide }

main() {
  const a = 4;
  const b = 2;
  const op = Operation.divide;
  switch (op) {
    case Operation.plus:
      print('$a + $b = ${a + b}');
    case Operation.minus:
      print('$a - $b = ${a - b}');
    case Operation.multiply:
      print('$a * $b = ${a * b}');
    case Operation.divide:
      print('$a / $b = ${a / b}');
  }
}
