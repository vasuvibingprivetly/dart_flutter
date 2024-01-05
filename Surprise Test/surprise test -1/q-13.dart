import 'dart:io';

void main() {
  List<Map<String, dynamic>> allData = [];

  stdout.write("Enter Student number: ");
  int n = int.parse(stdin.readLineSync() ?? "0");

  for (int i = 0; i < n; i++) {
    print("\n\n");
    stdout.write("Enter student id: ");
    int id = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("Enter student name: ");
    String name = stdin.readLineSync() ?? "0";
    stdout.write("Enter student per: ");
    double per = double.parse(stdin.readLineSync() ?? "0");

    Map<String, dynamic> newData = {
      'Id': id,
      'Name': name,
      'per': per,
    };
    allData.add(newData);
  }

  double Total = double.parse(stdin.readLineSync() ?? "0");
  Total = 0.00;

  allData.forEach((element) {
    double studentper = element['Percentage'];
    Total += studentper;

    print("\nData of Student ID ${element['Id']}:\n");
    element.forEach((key, value) {
      print("$key: $value");
    });
  });
}
