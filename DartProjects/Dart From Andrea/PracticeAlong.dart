void main() {
  var i = 1;
  while (i <= 5) {
    print('x' * i);
    i++;
  }
  print('Done');

  for (var i in [1, 2, 4]) {
    print(i);
  }
}
