import 'dart:io';

void main() {
  stdout.write("Enter size: ");
  int n = int.parse(stdin.readLineSync() ?? "0");
  print("-------------------------------------------------");
  List<int> myList = [];

  for (int i = 0; i < n; i++) {
    stdout.write("Enter element [$i]: ");
    int element = int.parse(stdin.readLineSync() ?? "0");
    myList.add(element);
  }

  void cube(List<int> list) {
    for (int i = 0; i < list.length; i++) {
      list[i] = list[i] * list[i] * list[i];
    }
  }

  cube(myList);
  print("\n\n---------------------------------------------");
  print("cube of all element: $myList");
}
