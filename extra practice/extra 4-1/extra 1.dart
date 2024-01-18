import 'dart:io';

void main() {
  List<Map<String, dynamic>> allData = [];
  //size of student
  stdout.write("Enter Student number: ");
  int n = int.parse(stdin.readLineSync() ?? "0");
  //input from user
  for (int i = 0; i < n; i++) {
    print("\n\n");
    stdout.write("Enter student id: ");
    int id = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("Enter studet name: ");
    String name = stdin.readLineSync() ?? "0";
    stdout.write("Enter student course: ");
    String course = stdin.readLineSync() ?? "0";
    stdout.write("Enter student age: ");
    int age = int.parse(stdin.readLineSync() ?? "0");

    Map<String, dynamic> newData = {
      'Id': id,
      'Name': name,
      'Course': course,
      'Age': age,
    };
    allData.add(newData);
  }

  allData.forEach((element){
    print("\nData of: ---[${allData.indexOf(element) + 1}/ ${allData.length}]---\n");
    element.forEach((key, value){
      print("$key\t:$value");
    });
  });
}
