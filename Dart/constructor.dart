class Student {
  int? id;
  String? name;
  double? per;

  //1.defualt constructor
  Student() {
    print("default Constructor called");
  }

  //2.parameterized constructor
  Student.data(int id, String name, double per) {
    this.id = id;
    this.name = name;
    this.per = per;
    print("Parameterized Constructor called");
  }

  //3.named constructor
}

void main(List<String> args) {
  Student s1 = Student();
  s1.id = 1;
  s1.name = "John";
  s1.per = 85.5;
  print("ID: ${s1.id}, Name: ${s1.name}, Percentage: ${s1.per}");

  Student s2 = Student.data(2, "Jane", 90.0);
  print("ID: ${s2.id}, Name: ${s2.name}, Percentage: ${s2.per}");
}
