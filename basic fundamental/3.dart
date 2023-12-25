import 'dart:io';

void main() {
  stdout.write('Enter a: ');
  int? a = int.parse(stdin.readLineSync());
  stdout.write('Ente b: ');
  int? b = int.parse(stdin.readLineSync());
  int? sum = a + b;

  print('a:$a + b:$b = $sum');
}
