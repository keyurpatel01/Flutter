class Student{
  int? id;
  String? name;
  double? per;
  String? address;

  Student(int id,String name,double per, String address){
    this.id = id;
    this.name = name;
    this.per = per;
    this.address = address;
  }

  @override
  String toString() {
    return 'id : $id name : $name per : $per address : $address';
  }
}
void main(List<String> args) {
  Student s1 = Student(1, 'java', 76.6, 'ahmedabad');
  Student s2 = Student(2, 'python', 66.6, 'delhi');
  Student s3 = Student(3, 'php', 86.6, 'kolkata');
  Student s4 = Student(4, 'dart', 56.6, 'mumbai');

  List<Student> stuList = [s1,s2,s3,s4];

  stuList.forEach((element) => print(element),);
}