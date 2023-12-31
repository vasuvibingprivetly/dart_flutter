import 'dart:io';

void main() {
  List<List<int>> a = List.generate(3, (i) => List<int>.filled(3, 0));
  List<List<int>> b = List.generate(3, (i) => List<int>.filled(3, 0));
  List<List<int>> sum = List.generate(3, (i) => List<int>.filled(3, 0));

  for (int i = 0; i < 3; i++) {
    for (int v = 0; v < 3; v++) {
      stdout.write("a[$i][$v]: ");
      a[i][v] = int.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < 3; i++) {
    for (int v = 0; v < 3; v++) {
      stdout.write("b[$i][$v]: ");
      b[i][v] = int.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < 3; i++) {
    for (int v = 0; v < 3; v++) {
      sum[i][v] = a[i][v] + b[i][v];
    }
  }
}
