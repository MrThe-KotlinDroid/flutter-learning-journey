void main() {
  const addRed = true;
  const addBlue = false;
  const extraColors = ['yellow', 'green'];
  final colors = [
      'gray', 'brown', 
      if (addRed) 'red', 
      if (addBlue) 'blue',
      ...extraColors,
    ];
  print(colors);
}