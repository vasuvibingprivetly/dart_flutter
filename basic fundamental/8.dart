import 'dart:io';

void main() {
  print("Enter p: ");
  int? p = int.parse(stdin.readLineSync()!);
  print("Enter r: ");
  int? r = int.parse(stdin.readLineSync()!);
  print("Enetr t: ");
  int? t = int.parse(stdin.readLineSync()!);

  int si = p * r * t;

  print("Simple interest : $si ");
}
