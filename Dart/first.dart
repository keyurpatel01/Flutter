import 'dart:io';

void main(List<String> args) {
  print("Hello World");
  print('Hello dart');
  stdout.write("Hello World");
  stdout.writeln("Hello World");
  int i = 1;
  print(i);
  print('enter a number');
  int num = int.parse(stdin.readLineSync()!);

  print('enter name ');
  String name = stdin.readLineSync()!;
  print("Hello $name");
}
