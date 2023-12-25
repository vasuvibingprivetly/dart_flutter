import 'dart:io';

void main() {
  stdout.write("Enter any number: ");
  int? a = int.parse(stdin.readLineSync()!);

  print("Cube of $a == ${a * a * a}");
}
