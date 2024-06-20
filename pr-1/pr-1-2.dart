import 'dart:io';

void main()
{
  stdout.write("Enter List Size : ");
  int size = int.parse(stdin.readLineSync() ?? "0");

  List<int> myList = List.generate(size, (index) {
    stdout.write("Enter Element $index: ");
    return int.parse(stdin.readLineSync()?? "0");
  });

  myList.sort();
  print("Largest Element : ${myList[size-1]}");  
}
