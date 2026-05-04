main() {
  List<int> numbers = [10, 20, 50, 30];
  print(numbers);
  numbers.add(70);
  print(numbers);
  numbers.addAll([80, 90, 100]);
  print(numbers);
  numbers.insert(1, 11);
  print(numbers);

  numbers.insertAll(0, [1, 2, 3, 4, 5]);
  print(numbers);

  print('index wise value = ${numbers[5]}');

  numbers[5] = 9;
  print(numbers);

  List<int> num_but_unsorted = [10, 2, 3, 9, 4, 8, 0];
  num_but_unsorted.sort();

  //Now sorted numbers
  print(num_but_unsorted); //-> sorted now btw

  //Remove item from list
  numbers.remove(11);
  print(numbers);

  //Remove item with index
  numbers.removeAt(4);

  //List length
  print('List length: ${numbers.length}');

  // numbers.clear();

  //big to small
  List reverse = numbers.reversed.toList();
  print(reverse);

  //operators
  int num1 = 100;
  int num2 = 50;


}