void main() {
  //Non-Nullable variable
  int age = 24;
  print(age);
  // age = null -> non-nullable variable can't be null

  //Nullable variable
  int? age1;
  print(age1);
  age1 = 45;
  print(age1);
  age1 = null;
  print(age1);

  //late initialization (var on stereoid)
  late String description;
  description =
      "Hello"; //We said we give it late, we gave it late (not at declaration)
  print(description);

  //null aware operator (?)
  String? name;
  print(name);
  print(
    name?.length,
  ); /*The null-aware operator (?.) safely accesses a property.
                        If 'name' is null, name?.length returns null instead of throwing an error.*/

  //?? instead of null show what we want (null aware on steriod)
  // Method 1
  int? pinCode;
  pinCode ??= 1234; // what to show instead of null
  print(pinCode);

  //Method 2
  String? name1;
  print(name1 ?? "No values at here");
  print(name1?.length ?? "No object to get the length from");
  // basically specefiying what to show instead of showing null

  // null-assertion op (!)
  String? name2;
  // print(
  // name2!.length, -> will through error at console at runtime
  // ); //I said before name2 can be null, but I gaurantee now this won't be null (dangerous)
}
