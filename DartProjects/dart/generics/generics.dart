import '../oop/classes.dart';

void main() {
  var noodles = MenuItem('veg noodles', 9.99);
  var pizza = Pizza(["mushrooms", "peppers"], "veg volcano", 15.99);
  var roast = MenuItem('veggie roast dinner', 12.49);
  var kebab = MenuItem('plant kebab', 7.49);

  print("$noodles, $pizza, $roast, $kebab");
  print(
    "------------------------------------------------------------------------",
  );

  var foods = Collection<MenuItem>('Menu Items', [noodles, pizza, roast, kebab]);

  var random = foods.randomItem();
  print(random);
}

class Collection<T> {
  String name;
  List<T> data;

  Collection(this.name, this.data);

  T randomItem() {
    data.shuffle();

    return data[0];
  }
}
