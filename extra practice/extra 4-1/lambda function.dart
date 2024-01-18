
void sum(int a, int b) => print("Sum: ${a + b} ");

int sum1(int a, int b) => a + b;

int sum2({required int a, required int b, int c = 0}) => a + b + c;

void main() {
  sum(10, 20);
  int s = sum1(20, 30);
  print("Sum: $s");
  int s1 = sum2(a: 10, b: 30, c: 40);
  print("Sum: $s1");
}
