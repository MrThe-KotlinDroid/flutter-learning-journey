void main(List<String> args) {
  Map<String, String> capitals = {
    'Bangladesh': 'Dhaka',
    'India': 'Delhi',
    'China': 'Beijing',
    'Nepal': 'Kathmandu',
  };

  print(capitals);
  print(capitals['Bangladesh']);

  //Map with constructor
  Map<String, String> designation = Map();

  designation['Abrar'] = 'Senior SWE';
  designation['Mishad'] = 'Product Manager';
  designation['Insaf'] = 'Junior SWE';
  designation['Ratul'] = 'Intern';

  print(designation);
  print("The Person Abrar is: ${designation['Abrar']}");

  //Map operations
  print('Keys: ${designation.keys}');
  print('Values: ${designation.values}');
  print('Length: ${capitals.length}');
  print('isEmpty: ${designation.isEmpty}');
  print('isNotEmpty: ${designation.isNotEmpty}');
}
