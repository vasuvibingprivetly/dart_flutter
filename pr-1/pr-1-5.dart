import 'dart:io';

void main() {
  List<List<int>> a = [];

  int r, c;
  print("Enter number of rows:");
  r = int.parse(stdin.readLineSync()!);
  print("Enter number of columns:");
  c = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < r; i++) {
    List<int> row = [];
    for (int j = 0; j < c; j++) {
      stdout.write("Enter element at position [$i][$j]: ");
      row.add(int.parse(stdin.readLineSync()!));
    }
    a.add(row);
  }

  for (int i = 0; i < r; i++) {
    for (int j = 0; j < c; j++) {
      stdout.write("${a[i][j]} ");
    }
    print("");
  }

  int choice;
  int sum = 0;

  print("\n\n[1]..sum of all elements");
  print("[2]..sum of specific row");
  print("[3]..sum of specific column");
  print("[4]..sum of diagonal elements");
  print("[5]..sum of anti-diagonal elements");
  print("[6]..press 0 for exit");
  stdout.write("Enter choice: ");
  choice = int.parse(stdin.readLineSync()!);
  int p;
  switch (choice) {
    case 1:
      for (int i = 0; i < r; i++) {
        for (int j = 0; j < c; j++) {
          sum += a[i][j];
        }
      }
      print("Sum of all elements: $sum");
      break;

    case 2:
      print("Enter row:");
      p = int.parse(stdin.readLineSync()!);
      for (int j = 0; j < c; j++) {
        sum += a[p][j];
      }
      print("Sum of row $p: $sum");
      break;

    case 3:
      print("Enter column:");
      p = int.parse(stdin.readLineSync()!);
      for (int i = 0; i < r; i++) {
        sum += a[i][p];
      }
      print("Sum of column $p: $sum");
      break;

    case 4:
      for (int i = 0; i < r; i++) {
        sum += a[i][i];
      }
      print("Sum of diagonal elements: $sum");
      break;

    case 5:
      for (int i = 0; i < r; i++) {
        sum += a[i][c - 1 - i];
      }
      print("Sum of anti-diagonal elements: $sum");
      break;

    case 6:
      break;
  }
}
