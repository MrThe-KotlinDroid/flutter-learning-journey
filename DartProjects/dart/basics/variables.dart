void main() {
  // int fixedVar = 100;
  // double pi = 3.14;
  // String msg = "hello dart";
  // bool isFun = true;
  //
  // print(dynamicVar);
  // print(fixedVar);
  // print(pi);
  // print(msg);
  // print(isFun);

  String number = "42";
  int parseIntNumber = int.parse(number);
  print(parseIntNumber);

  String doubleNumber = "33.56";
  double parseDoubleNumber = double.parse(doubleNumber);
  print(parseDoubleNumber);

  double price = 99.99;
  print(price.round());
  print(parseIntNumber.toString());

  bool isFun = true;
  bool isNotFun = false;
  print(isFun.runtimeType);

  print(isFun && !isNotFun); // checking isFun is true? and isNotFun is false?
  print(isFun && isNotFun);

  //var
  var name = "Sahil";
  name = "Hamim";
  // name = 24; -> name is already type String. Can't change to int anymore.

  //dynamic -> can assign any type of value as much as we want (opposite to var)
  dynamic value = "Sahil";
  value = 24; // 1st data type change
  value = true; // 2nd data type change and can go on...
  print(value);

  int num1 = 2;
  double num2 = 3.0;

  //"is" is the instance-of operator
  print((num1 + num2) is int);
  //print runtimetype of an object
  print((num1 + num2).runtimeType); 
}