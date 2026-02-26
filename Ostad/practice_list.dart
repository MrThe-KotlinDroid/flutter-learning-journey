void main(List<String> args) {
  List<int> ages = [10, 20, 40, 30];
  print(ages);

  List<String> fruits = ['Apple', 'Mango', 'Banana', 'Pinapple'];
  print(fruits);

  fruits.removeRange(0, 2);
  print(fruits);

  Set<String> names = {'Abrar', 'Baker', 'Noor', 'Aqila'};
  names.add('Hamim');
  print(names);

  names.addAll({'Harry', 'Watson', 'Blake'});
  // names.addAll({2, 3, 5}); --> if not specefied type i.e. Set<String>
  print(names);
}
