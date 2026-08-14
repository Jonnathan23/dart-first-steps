void main() {
  print(greetEveryOne());
  print(greetEveryone());

  print(addTwoNumbers(4, 7));
  print(addTwoNumbersLamda(4, 7));
}

String greetEveryOne() {
  return 'Hello Everyone';
}

String greetEveryone() => 'Hello Everyone';

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbersLamda(int a, int b) =>  a + b;

int addTwoNumbersOptional(int a, [int b = 0]) {    
  return a + b;
}

int addTwoNumbersOptional1(int a, [int? b]) {
  //b = b ?? 0;
  b ??= 0;
  
  return a + b;
}
