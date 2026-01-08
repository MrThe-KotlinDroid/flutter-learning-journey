void main() {
  // List<int> number = <int> [1,2,3]; another way of writing
  var list = <int>[1, 2, 3, 4]
    
    ..add(5)
    ..add(6)
    ..remove(2);
  print(list);
}
