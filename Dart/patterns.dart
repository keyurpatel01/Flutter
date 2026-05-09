import 'dart:io';

void main(List<String> args) {
  for (int i = 1; i <= 5; i++) {
    //row
    for (int j = 1; j <= 4; j++) {
      //column
      stdout.write('*');
    }
    print('');
  }

  for (int i = 1; i <= 6; i++) {
    //row
    for (int j = 1; j <= i; j++) {
      //column
      stdout.write('*');
    }
    print('');
  }

  for (int i = 1; i <= 6; i++) {
    //row
    for (int j = 1; j <= i; j++) {
      //column
      stdout.write(j);
      ;
    }
    print('');
  }

  for (int i = 1; i <= 5; i++) {
    //row
    for (int j = 1; j <= i; j++) {
      //column
      stdout.write(i);
    }
    print('');
  }

  for (int i = 1; i <= 5; i++) {
    //row
    for (int s = 4; s >= i; s--) {
      //space
      stdout.write(' ');
    }
    for (int j = 1; j <= i; j++) {
      //column
      stdout.write('* ');
    }
    print('');
  }

  for (int i = 1; i <= 5; i++) {
    //row
    for (int s = 4; s >= i; s--) {
      //space
      stdout.write(' ');
    }
    for (int j = 1; j <= i; j++) {
      //column
      stdout.write('*');
    }
    print('');
  }

  for (int i = 1; i <= 5; i++) {
    for (int s = 2; s <= i; s++) {
      stdout.write(' ');
    }
    for (int j = 5; j >= i; j--) {
      stdout.write('* ');
    }
    print('');
  }
}
