int add(int a, int b) => a + b;
int sub(int a, int b) => a - b;
String showFunc(int a, int b) {
  int addResult = add(a, b);
  int subResult = sub(a, b);
  String result = 'Add $a + $b = $addResult\n';
  result += 'Sub $a - $b = $subResult\n';
  return result;
}