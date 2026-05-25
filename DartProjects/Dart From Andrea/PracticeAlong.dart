void main() {
  const list = [1, 2, 3];
  list.forEach((value) => print(value));
  // final doubles = list.map((value) => value * 2).toList();
  // final double = doubleItems(list);
  final double = transform(list, (x) => x * 2);
  print(double);
}

List<int> transform(List<int> items, int Function(int) f) {
  var result = <int>[];
  for (var x in items) {
    result.add(f(x));
  }
  return result;
}

List<int> doubleItems(List<int> items) {
  var result = <int>[];
  for (var x in items) {
    result.add(x * 2);
  }
  return result;
}
