void main(List<String> args) {
  //1.for loop(ENTRY CONTROLLED LOOP)
  print('for loop increasing order');
  for (int i = 6; i <= 5; i++) {
    print(i);
  }
  print('for loop decreasing order');
  for (int i = 5; i >= 1; i--) {
    print(i);
  }
  //2. while loop(ENTRY CONTROLLED LOOP)
  print('while loop increasing order');
  int j = 10;
  while (j <= 5) {
    print(j);
    j++;
  }
  print('while loop decreasing order');
  int k = 5;
  while (k >= 1) {
    print(k);
    k--;
  }

  //3. do while loop
  print('do while loop increasing order');
  int m = 10;
  do {
    print(m);
    m++;
  } while (m <= 5);

  print('do while loop decreasing order');
  int n = 5;
  do {
    print(n);
    n--;
  } while (n >= 1);
  //4. for in loop(for each loop)
}
