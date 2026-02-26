void main() {
  //Map

  Map<String, dynamic> student = {
    "name": "Sahil",
    "age": 24,
    "grade": "A",
    "isPassed": true,
  };

  print(student);

  //accessing values
  print("Student name: ${student["name"]}");
  print("Student name: ${student["name"]}, age: ${student["age"]}");

  //updating values against specefic keys in map
  student["grade"] = "A+";
  print("Student updated grade: ${student["grade"]}");

  //adding new key:value pair
  student["city"] = "Chattogram";
  print("Student address: ${student["city"]}");

  //removing a key:value pair
  student.remove("age");
  print(student);

  //Checking a specefic key is there or not
  if (student.containsKey("grade")) {
    print("Yes");
  } else {
    print("No");
  }

  print("Key: ${student.keys}");
  print("Values: ${student.values}");
}
