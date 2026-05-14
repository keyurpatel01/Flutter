class Parent {
  void display() {
    print("Parent class");
  }
}

class Child extends Parent {
  void display() {
    super.display(); // Call the display method of the Parent class
    print("Child class");
  }
}

void main(List<String> args) {
  Child c = Child();
  c.display();
}
