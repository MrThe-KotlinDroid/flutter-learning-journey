void main() {
  String color = "blue";

  if (color == "blue") {
    //
  } else if (color == "green") {
    //
  } else {
    // default
  }

  // One liner
  if (color == "red") print("hello red!");

  // About null
  String thing1 = "";

  if (thing1.isEmpty) {
    // Simply passing color won't check it if it is empty, have to use .isEmpty
    // Do Something
  }

  String? thing2;

  if (thing2 != null) {
    // By default thing2 variable is always null
  }

  //Assert
  var text = "good";
  assert(text != "bad");
}
