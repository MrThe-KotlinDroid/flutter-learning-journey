void main() {
  Set<String> names = {
    "Apple",
    "Mango",
    "Banana",
    "Apple",
  }; // Giving Warning becuase set should not contain the same element more than once

  names.add("Mango"); //Adding a duplicate element -> won't actually add it
  names.add("peach"); //New element
  names.remove("Apple");

  print(names);
  print(names.length);
}