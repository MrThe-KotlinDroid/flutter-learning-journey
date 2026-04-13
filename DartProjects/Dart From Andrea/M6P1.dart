void main() {
  // const pizzaPrices = {'margherita': 5.5, 'pepperoni': 7.5, 'vegetarian': 6.5};
  const pizzaPrices = {};

  const order = ['margherita', 'pineapple', 'vegetarian'];
  double total = 0;
  bool flag = false;

  for (var item in order) {
    if (pizzaPrices.isEmpty) {
      flag = true;
    } else {
      for (var key in pizzaPrices.keys) {
        if (item == key) {
          total += pizzaPrices[key] as double;
          flag = false;
          break;
        } else
          flag = true;
      }
    }
    if (flag) {
      print('$item is not on the menu');
    }
  }

  print('Total: $total');
}
