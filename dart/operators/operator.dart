void main() {
  //Arithimitic operator
  int a = 5, b = 10;

  print("Addition ${a + b}");
  print("Subtraction ${a - b}");
  print("Multiplication ${a * b}");
  print("Division ${a / b}");
  print("Reminder ${a % b}");

  //Relational operator

  print("a is equal to b: ${a == b}");
  print("a is not equal to b: ${a != b}");
  print("a is greater than b: ${a > b}");
  print("a is less then b: ${a < b}");

  //Logical operator
  bool x = true, y = false;

  print("x and y ${x && y}");
  print("x or y ${x || y}");
  print("not x ${!x}");

  //Unary
  int v = 10;
  int c = -v;
  print(c);

  v++; //v+1
  print(v);
  c--; //c-1
  print(c);
}
