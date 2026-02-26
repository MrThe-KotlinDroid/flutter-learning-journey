//3 keywords : var, final, const

void main() {
  var name = "dart";
  print(name);

  final String language; // can be assigned later if not on declaration
  language = "dart"; //intializes at run time
  // language = "mart"; -> a variable that is final, can't be re-assigned.
  print(language);

  const pi = 3.1415; // have to assign the value at declaration 
  // pi = 4.55; -> can't be re-assigned.
  print(pi);
}
