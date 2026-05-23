import 'dart:io';

void main() {
  /// 1.compile time - checked
  /// 2. runtime - unchecked

  ///to handle exception in dart there are 4 keywords
  ///1.try
  ///2.on/catch
  ///3.finally
  ///4.throw

  try {
    print('enter a= ');
    int a = int.parse(stdin.readLineSync().toString());
    print('enter b = ');
    int b = int.parse(stdin.readLineSync().toString());
    int c = a ~/ b;
    print('c = $c');
    // } catch (e) {
    //   print('exception : $e');
    // }
  } on IntegerDivisionByZeroException {
    print('number cannot divided by zero');
  } on FormatException {
    print('number should be in numberic format');
  }
}
