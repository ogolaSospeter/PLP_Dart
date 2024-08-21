/*
Create two classes, one for a student and one for a teacher.
The student class should have a name, age and grade level.
The teacher class should have a name, age, and the subject they teach.
Create a method in the student class that prints out the student's information.
Create a method in the teacher class that prints out the teacher's information.
Create a third class that creates a student and teacher object, and calls the methods to print out the information.
*/

class Student {
  String name;
  int age;
  int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printInfo() {
    print('Student: $name, $age years old, grade $gradeLevel');
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printInfo() {
    print('Teacher: $name, $age years old, teaches $subject');
  }
}

class School {
  void printInfo() {
    Student student = Student('John', 15, 9);
    Teacher teacher = Teacher('Mr. Smith', 35, 'Math');

    student.printInfo();
    teacher.printInfo();
  }
}

void main() {
  School().printInfo();
}
