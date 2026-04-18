

// Problem 1: Book class with discount price method

class Book {
    String title;
    String author;
    double price;
    Book(this.title, this.author, this.price);

   double discountPrice(double discountPercent){
     return price - (price * discountPercent / 100);
   }
  
}

// Problem 2: Employee class with Manager and Developer subclasses

class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
}
class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  void displayInfo() {
    print("Manager Name: $name");
    print("Salary: \$${salary}");
    print("Department: $department");
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage): super(name, salary);

  void displayInfo() {
    print("Developer Name: $name");
    print("Salary: \$${salary}");
    print("Programming Language: $programmingLanguage");
  }
}

// Problem 3: abstract class with Fan and Light classes
abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance{
  @override
  void turnOn(){
    print("Fan is now running");
  }
  @override
  void turnOff(){
    print("Fan is now stopped");
  }
}
class Light extends Appliance{
    @override
  void turnOn(){
    print("Light is switched on");
  }
  @override 
  void turnOff(){
    print("Light is switched off");
  }
  
}
main(){

  //Problem 1 object creation and method call
    Book book1=Book("Choker Bali", "Rabindranath Thakur", 500);
    print("Book Name:${book1.title}, Author: ${book1.author}, Price: \$${book1.price}");
    print("Book Name:${book1.title}, Author: ${book1.author}, Discount Price: \$${book1.discountPrice(20)}");

    Book book2=Book("Gitanjali", "Rabindranath Thakur", 300);
    print("Book Name:${book2.title}, Author: ${book2.author}, Price: \$${book2.price}");
    print("Book Name:${book2.title}, Author: ${book2.author}, Discount Price: \$${book2.discountPrice(20)}");

// Problem 2 object creation and method call
Developer developer1 = Developer("Radhesh Roy", 50000, "Dart");
Manager manager1 = Manager("Sofik", 40000, "IT");

developer1.displayInfo();
manager1.displayInfo();

// Problem 3 object creation and method call

Fan fan = Fan();
fan.turnOn();
fan.turnOff();

Light light = Light();
light.turnOn();
light.turnOff();

}