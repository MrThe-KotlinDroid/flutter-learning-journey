void main() {
  final list = [1, 2, 3];
  final copy1 = list;
  copy1[0] = 5;
  final copy2 = [...list];
  copy2[0] = 6;
  print('list: $list');
  print('copy1: $copy1');
  print('copy2: $copy2');
}
