void main() {
  var noodles = MenuItem("Veg Noodles", 9.99);
  var pizza = Pizza(["mushrooms", "peppers"], "veg volcano", 15.99);

  // can access like this
  // print(noodles.title);
  // print(noodles.price);
  // print(pizza.title);
  // print(pizza.price);

  print(noodles);
  print(pizza);
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String format() {
    return "$title --> $price";
  }

  @override
  String toString() {
    return format();
  }
}

//inheritence
class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(this.toppings, super.title, super.price);

  @override
  String format() {
    var formattedToppings = "Contains:";

    for (final topping in toppings) {
      formattedToppings = "$formattedToppings $topping";
    }
    return "$title -> £$price \n$formattedToppings";
  }

  @override
  String toString() {
    return "instance of Pizza: $title, $price, $toppings";
  }
}
