import 'dart:io';

void main()
{
  stdout.write("Enter List Size : ");
  int size = int.parse(stdin.readLineSync() ?? "0");

  List<int> myList = List.generate(size, (index) {
    stdout.write("Enter Element $index: ");
    return int.parse(stdin.readLineSync()?? "0");
  });

  stdout.write("\nNegative Elements : ");
  for(int i=0; i<size; i++)
  {
    if(myList[i] < 0)
     {
       stdout.write("${myList[i]}\t");
     }
  }

  
}
