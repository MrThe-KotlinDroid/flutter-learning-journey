main() {
  var cities = <String?>['London', 'Dhaka', 'Berlin', null];
  for (var city in cities) {
    print(city?.toUpperCase());
  }
}