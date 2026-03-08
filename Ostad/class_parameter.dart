void main() {
  greeting('John');
  showUserDetails('Abrar', 25, 'Bangladeshi');
}

void greeting(String name) {
  print('Hello, $name');
}

void showUserDetails(String name, int age, String nationality) {
  print('$name is a $age of $nationality personality');
}