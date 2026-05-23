class Student {
  int? id;
  String? name;
  double? per;
  static String caname = 'Tops';

  Student({this.id, this.name, this.per});

  void showData() =>
      print('id : $id, name : $name, per: $per, collage name : $caname');

  static void call() => print('static method in student class');
}

void main() {
  Student s1 = Student(id: 1, name: 'keyur', per: 97);
  s1.showData();
  Student.call();
}
