import 'dart:io';

void main() {
  List<int> myList = [1, 3, 6, 8, 2, 9, 5, 4, 0];

  int largest = myList[0];

  myList.forEach((element) {
    if (element > largest) {
      largest = element;
    }
  });

  print("largest number from list: $largest");
}
