void main(List<String> args) {
  String fname = 'Abrar';
  String lname = 'Hamim';
  int age = 24;
  double number = 20.32;
  bool isLogin = false;

  String fullname = fname + " " + lname;
  String fullname2 = "$fname $lname";

  print("$fname $lname");
  print(fullname);
  print(fullname2);

  print("Name: $fullname age: $age value: $number is Logged");
  print("Name: $fullname \nage: $age \nvalue: $number \nis Logged: $isLogin");

  //Data type
  var test = 20;
  print(test);
  // test = 20.5; -> can't be assigned different type
  // test = 'string value' -> can't be assigned different type

  //Can change data types dynamically each time
  dynamic test2 = 50;
  test2 = "value changed to string";
  print(test2);

  //Compile time constant
  const double pi = 3.1416;
  print(pi);

  //Run time constant
  final currentTime = DateTime.now();
  print(currentTime);
}