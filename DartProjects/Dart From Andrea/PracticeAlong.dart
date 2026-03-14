enum Medal { gold, silver, bronze, noMedal }

void main() {
  Medal medal = Medal.bronze;
  print(medal);
  print(medal.name);
  print(Medal.values);
  print(Medal.values.byName('bronze'));
  switch (medal) {
    case Medal.gold:
      print('gold');
    case Medal.silver:
      print('silver');
    case Medal.bronze:
      print('bronze');
    case Medal.noMedal:
      print('no medal, try again');
  }
}
