import 'dart:io';

void main() {
  print("[1]..for insert the data");
  print("[2]..for delete the data");
  print("[3]..for update the data");
  print("[4]..for view the data");
  print("--:Enter the choice:--");
  int n = int.parse(stdin.readLineSync()!);

  List myList = [1, 2, 3, 4, 5];

  print("**list: $myList**");

  switch (n) {
    case 1:
      print("Enter index where you want to insert: ");
      int a = int.parse(stdin.readLineSync()!);
      print("Enter number which you want to insert: ");
      int b = int.parse(stdin.readLineSync()!);
      myList.insert(a - 1, b);
      print("\n\n$myList");

    case 2:
      print("Enter number you want to delete: ");
      int a = int.parse(stdin.readLineSync()!);
      myList.remove(a);
      print("\n\nlist after delete number: $myList");

    case 3:
      print("\n\nEnter index where you want to update: ");
      int a = int.parse(stdin.readLineSync()!);
      print("\nEnter number for update the value: ");
      int b = int.parse(stdin.readLineSync()!);
      myList[a - 1] = b;
      print("\n\nlist after update the number: $myList");

    case 4:
      print("\n\nEnter index for view element: ");
      int a = int.parse(stdin.readLineSync()!);
      myList.elementAt(a - 1);
      print("\n\n$myList");
  }
}
