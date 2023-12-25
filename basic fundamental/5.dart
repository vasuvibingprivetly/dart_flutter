import 'dart:io';

void main() {
  stdout.write("Enter starting number: ");
  int? a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter ending number: ");
  int? b = int.parse(stdin.readLineSync()!);

  for (int i = a; i <= b; i++) {
    for (int v = 1; v <= 10; v++) {
      print("$i * $v ${v * i}");
    }
  }
}
