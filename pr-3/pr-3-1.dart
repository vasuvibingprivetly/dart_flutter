import 'dart:io';

int Sum({required List<int> list}){
  int sum = 0;
  list.forEach((element) {
    sum += element;
  });
  return sum;
}
void main(){
  List<int> myList = List.generate(5, (index) => index);

  myList.forEach((element) {
    stdout.write("Enter element of [${myList.indexOf(element)}] : ");
    element = int.parse(stdin.readLineSync() ?? "0");
  });
  print("Sum : ${Sum(list: myList)}\n");
}
