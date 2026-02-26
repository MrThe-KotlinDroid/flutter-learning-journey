void main() {
  List<int> numbers = [1, 2, 3];
  List<String> fruits = ['Mango', 'Banana', 'Orange'];

  print(numbers.length);
  print(numbers.isNotEmpty);
  print(fruits[0]);
  print(fruits.first);
  print(fruits.last);

  //list data add
  fruits.insert(1, 'jackfruit');
  print(fruits);

  fruits.insertAll(2, ['Peach', 'Lemon', "Cocktail"]);
  print(fruits);
  //[Mango, jackfruit, Peach, Lemon, Banana, Orange]

  //list data remove
  fruits.remove('Banana');
  print(fruits);
  //[Mango, jackfruit, Peach, Lemon, Cocktail, Orange]

  fruits.removeAt(3);
  print(fruits);
  //[Mango, jackfruit, Peach, Cocktail, Orange]

  //Update list
  fruits[1] = "Olive";
  print(fruits);

  //Fixed length list
  List<int> fixedList = List<int>.filled(4, 0);
  /* Declaring <int> on the left defines the contract: this variable can only hold List<int>.
  The right side must satisfy this contract, so specifying <int> again is optional here.
  Using a raw List (without <int>) on the left would result in a List<dynamic>.*/

  print(fixedList); // [0, 0, 0];

  fixedList[0] = 1;
  fixedList[1] = 2;
  fixedList[2] = 3;
  print(
    fixedList,
  ); // [1, 2, 3, 0] -> see 4th index is automatically 0 cause we didn't put any value

  //growable list
  List<int> growableList = [];
  growableList.add(23);
  growableList.add(24);
  print(growableList); //[23, 24]
}
