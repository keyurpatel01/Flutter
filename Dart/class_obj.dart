class User {
  int? id;
  String? name;

  void printData() {
    print("ID: $id, Name: $name");
  }
}

void main(List<String> args) {
  User u = User();
  u.id = 1;
  u.name = "John Doe";
  u.printData();
}
