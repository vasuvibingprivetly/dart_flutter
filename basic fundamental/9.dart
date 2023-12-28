import 'dart:io';

void main() {
  print("[1]..addition..");
  print("[2]..substraction..");
  print("[3]..multipliaction..");
  print("[4]..division..");
  print("Enter your choice: ");
  int? n = int.parse(stdin.readLineSync()!);

  switch (n) {
    case 1:
      print("Enetr a: ");
      int a = int.parse(stdin.readLineSync()!);
      print("Enetr b: ");
      int b = int.parse(stdin.readLineSync()!);

      int sum = 0;
      sum = a + b;
      print("sum : $sum");

    case 2:
      print("Enetr a: ");
      int a = int.parse(stdin.readLineSync()!);
      print("Enetr b: ");
      int b = int.parse(stdin.readLineSync()!);

      int sub = 0;
      sub = a - b;
      print("sub : $sub");

    case 3:
      print("Enetr a: ");
      int a = int.parse(stdin.readLineSync()!);
      print("Enetr b: ");
      int b = int.parse(stdin.readLineSync()!);

      int mul = 0;
      mul = a - b;
      print("mul : $mul");

    case 4:
      print("Enetr a: ");
      int a = int.parse(stdin.readLineSync()!);
      print("Enetr b: ");
      int b = int.parse(stdin.readLineSync()!);

      int div = 0;
      div = a - b;
      print("div : $div");

    default:
      break;
  }
}
