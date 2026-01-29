void main() {
  final greeting = greet(name: "Abrar", age: 24);
  print(greeting);
}

String greet({String? name, required int age}) {
  return "Hi, my name is $name & i am $age";
}
