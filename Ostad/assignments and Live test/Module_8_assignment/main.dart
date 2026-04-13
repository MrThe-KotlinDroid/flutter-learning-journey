//Question 1 Solved
class Book {
  var title;
  var author;
  var price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    return price - price * (discountPercent / 100);
  }

  @override
  String toString() {
    return '''
          Book information
          Title: $title
          Author: $author
          price: $price''';
  }
}

void main() {
  //For Book Class(Question 1)
  var book1 = Book('House of earth and blood', 'Sarah J. Maas', 12.99);
  var book2 = Book('Kingdom of Ash', 'Sarah J. Mass', 14.99);

  print(book1);
  print('\t  Price after ${book1.discountedPrice(20)}\n');
  print(book2);
  print('\t  Price after ${book2.discountedPrice(20)}\n\n');

  //For Employee Class(Question 2)
  var manager = Manager('Momshad Dinury', 500000, 'Embeded Systems & Apps');
  manager.displayInformation();

  var developer = Developer('Abrar Hamim', 66000, 'Dart');
  developer.displayInformation();

  //For Appliance Class(Question 3)
  var fan = Fan();
  fan.turnOn();
  fan.turnOff();

  var light = Light();
  light.turnOn();
  light.turnOff();
}

//Question 2 solved
class Employee {
  var name;
  double salary;

  Employee(this.name, this.salary);
}

class Manager extends Employee {
  var department;

  Manager(super.name, super.salary, this.department);

  void displayInformation() {
    print('''
          Manager Information
          name: $name
          salary: $salary
          department: $department \n
''');
  }
}

class Developer extends Employee {
  var programmingLanguage;

  Developer(super.name, super.salary, this.programmingLanguage);

  void displayInformation() {
    print('''
          Developer Information
          name: $name
          salary: $salary
          department: $programmingLanguage
''');
  }
}

//Question 3 Solved
abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  turnOn() {
    print('Fan is now running');
  }

  @override
  turnOff() {
    print('Fan is now off');
  }
}

class Light extends Appliance {
  @override
  turnOn() {
    print('Light is switched on');
  }

  @override
  turnOff() {
    print('Light is switched off');
  }
}