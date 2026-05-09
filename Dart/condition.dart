void main(List<String> args) {
  int a = 10;
  int b = 20;

  //1.simple if statement
  if (a > b) {
    print("a is greater than b");
  } else {
    print("a is less than or equal to b");
  }

  //2. else if ladder
  int marks = 85;
  if (marks < 35) {
    print('failed');
  } else if (marks >= 35 && marks <= 60) {
    print('passed class');
  } else if (marks >= 61 && marks <= 70) {
    print('C GRADE');
  } else if (marks >= 71 && marks <= 80) {
    print('B grade');
  } else if (marks >= 81 && marks <= 90) {
    print('A grade');
  } else if (marks >= 91 && marks <= 100) {
    print('A+ grade');
  } else {
    print('invalid marks');
  }

  //3. nested if statement
  int age = 84;
  if (age > 18) {
    if (age < 55) {
      print('you are eligible for donate blood');
    } else {
      print('age is grater than 18 but not less than 55');
    }
  } else {
    print('age is less than 18');
  }

  //4. switch case statement
  int choice = 1;

  switch (choice) {
    case 1:
      print('you selected english');
      break;
    case 2:
      print('you selected hindi');
      break;
    case 3:
      print('you selected gujarati');
      break;
    default:
      print('invalid choice');
  }
}
