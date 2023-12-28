import 'dart:io';

void main() {
  print("Enter first name: ");
  String? fname = stdin.readLineSync()!;

  print("Enter second name: ");
  String? sname = stdin.readLineSync()!;

  print("full name: $fname $sname");
}
