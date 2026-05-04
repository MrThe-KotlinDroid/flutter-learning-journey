void main(List<String> args) {
  String name = 'Dart';

  Map<String, dynamic> result = {
    'name': 'Abrar',
    'age': 24,
    'isPrgrammingLanguge': false,
  };

  print(result['age']);

  result['age'] = 20;

  print(result['age']);

  print(result.keys);
  print(result.values);
  // print(result.entries);

  result.forEach((key, value) {   
    print("$key: $value");
  });
}
