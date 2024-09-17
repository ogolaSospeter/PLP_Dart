/*
Assignment Questions:

Encapsulation:

Create a class that encapsulates data and methods.
Ensure that sensitive data is hidden using private variables and controlled access methods.

Inheritance:

Implement a subclass that inherits properties and methods from a superclass.

Polymorphism:

Demonstrate method overriding where different subclasses have their unique implementation of a common method.

Abstraction:

Create abstract classes and define abstract methods that are implemented by subclasses.

*/

// Encapsulation
class Encapsulation {
  String _name;
  int _age;

  Encapsulation(this._name, this._age);

  String getName() {
    return _name;
  }

  int getAge() {
    return _age;
  }
}

// Inheritance
class Inheritance {
  String name;
  int age;

  Inheritance(this.name, this.age);

  void display() {
    print("Name: $name");
    print("Age: $age");
  }
}

class SubInheritance extends Inheritance {
  String address;

  SubInheritance(String name, int age, this.address) : super(name, age);

  void display() {
    super.display();
    print("Address: $address");
  }
}

// Polymorphism
class Polymorphism {
  void display() {
    print("This is a display method of Polymorphism class");
  }
}

class SubPolymorphism extends Polymorphism {
  void display() {
    print("This is a display method of SubPolymorphism class");
  }
}

// Abstraction

abstract class Abstraction {
  void display();
}

class SubAbstraction extends Abstraction {
  void display() {
    print("SubAbstraction class display method");
  }
}

void main() {
  // Encapsulation
  Encapsulation encap = Encapsulation("John", 25);
  print("Name: ${encap.getName()}");
  print("Age: ${encap.getAge()}");

  // Inheritance
  SubInheritance subInheritance = SubInheritance("John", 25, "New York");
  subInheritance.display();

  // Polymorphism
  Polymorphism poly = SubPolymorphism();
  poly.display();

  // Abstraction
  SubAbstraction subAbstraction = SubAbstraction();
  subAbstraction.display();
}
