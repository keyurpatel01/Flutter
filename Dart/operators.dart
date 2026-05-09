void main() {
  //1. Arithmetic operator
  int a = 12;
  print("a=$a");
  int b = 5;
  print("addition of a and b = ${a + b}");
  print(a - b);
  print(a * b);
  print(a / b);

  //2.assignment operators
  int c = 10;
  print(c);
  c += a;
  print(c);
  c -= 2;
  print(c);
  c ~/= 3;
  print(c);

  //3.comparison operator
    int i=3;
    int j=2;
    print(i==j);
    print(i!=j);
    print(i>j);
    print(i<j);
    print(i>=j);
    print(i<=j);

    //4. unary operator
    int x=5;
    print(x);
    print(x++);
    print(x);

    int y=x--;
    print(y);

    //5.logical operator
    double base=34.4;
    double height = 12.3;
    double area = (base * height)/2;
    print("area of triangle = $area");
    }

