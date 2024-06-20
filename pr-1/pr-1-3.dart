import 'dart:io';

void main()
{
  stdout.write("Enter List Size: ");
  int size = int.parse(stdin.readLineSync() ?? "0");
  int choice = 0;

  List<int> myList = List.generate(size, (index)
  {
    stdout.write("Enter Element : ");
    return int.parse(stdin.readLineSync()?? "0");
  });

    print("[1] For Insert");
    print("[2] For Update");
    print("[3] For Delete");
    print("[4] For Display Data");
    print("[5] For Exit");
    stdout.write("Enter Your Choice : ");
    choice = int.parse(stdin.readLineSync()?? "0");

    switch(choice)
    {
      case 1:
        stdout.write("Enter Index : ");
        int index = int.parse(stdin.readLineSync()?? "0");
        stdout.write("Enter Element : ");
        int n = int.parse(stdin.readLineSync()?? "0");
        myList.insert(index, n);
        print("List : $myList");
        break;
      case 2:
        stdout.write("Enter Index : ");
        int index = int.parse(stdin.readLineSync()?? "0");
        stdout.write("Enter Element : ");
        int n = int.parse(stdin.readLineSync()?? "0");
        myList[index] = n;
         print("List : $myList");
        break;
      case 3:
        stdout.write("Enter Index : ");
        int index = int.parse(stdin.readLineSync()?? "0");
        myList.removeAt(index);
         print("List : $myList");
        break;
      case 4:
        stdout.write("Enter Index : ");
        int index = int.parse(stdin.readLineSync()?? "0");
        // myList.indexOf(index);
        print("Element: ${myList.indexOf(index)}");
        break;
      case 5:
        break;  
    }
}
