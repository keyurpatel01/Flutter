//single inheritance example
class A {
  A() {
    print("Class A default constructor called");
  }
  void clasAMethod() {
    print("Class A method called");
  }
}

class B extends A {
  void classBMethod() {
    print("Class B method called");
  }
}

//multilevel inheritance example
class C extends B {
  void classCMethod() {
    print("Class C method called");
  }
}

void main(List<String> args) {
  B b = B();
  b.clasAMethod(); // Inherited method from class A
  b.classBMethod(); // Method of class B

  C c = C();
  c.clasAMethod(); // Inherited method from class A
  c.classBMethod(); // Inherited method from class B
  c.classCMethod(); // Method of class C
}
