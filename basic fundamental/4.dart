import 'dart:io';

void main() {
  print("Enter number: ");
  int? n = int.parse(stdin.readLineSync());

  for (int i = 1; i <= n; i++) {
    print("$n * $i = ${n * i} ");
  }
}
