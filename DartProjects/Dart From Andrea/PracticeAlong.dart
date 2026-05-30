void main() {
  const list = [1, 2, 3];
  const l2 = [1.0, 2.0, 3.0];
  list.forEach((value) => print(value));
  // final doubles = list.map((value) => value * 2).toList();
  // final double = doubleItems(list);
  final doubles = transform<int>(list, (x) => x * 2);
  final sqaures = transform<double>(l2, (x) => x * x);
  print(doubles);
  print(sqaures);
}

List<T> transform<T>(List<T> items, T Function(T) f) {
  var result = <T>[];
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
