void main() {
  print(sum([]));
  print(sum([1, 2]));
  print(sum([1, 2, 3, 4]));
}

double sum(List<double> numbers) {
  double totalNumber = 0.0;
  for (double number in numbers) {
    totalNumber += number;
  }
  return totalNumber;
}
