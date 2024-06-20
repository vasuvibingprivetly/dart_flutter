import 'dart:io';

void main() 
{
  stdout.write("Enter Row : ");
  int r = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter Column : ");
  int c = int.parse(stdin.readLineSync() ?? "0");

  List<List<int>> myList = List.generate(r, (index)
  {
    List<int> newList = List.generate(c, (i)
    {
      stdout.write("Enter Element [${index}][${i}]: ");
      return int.parse(stdin.readLineSync() ?? "0");
    });
    return newList;
  });

  int sum = 0;
  for(int i = 0; i < r; i++)
  {
    for(int j = 0; j < c; j++)
    {
      sum += myList[i][j];
    }
  }
   stdout.write("Sum = ${sum}");
}
