import 'dart:io';

void main() {
  List<int> arr = [];
  int n = 8;

  inputArray(arr, n);
  arr.sort();
  printArray(arr);
  arr.sort((a, b) => ALessThanB(a, b));
  printArray(arr);
}

void inputArray(List<int> arr, int n) {
  for (int i = 0; i < n; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }
}

int ALessThanB(int a, int b) {
  if (a < b)
    return 1;
  else if (a > b)
    return -1;
  else
    return 0;
}

void printArray(List<int> arr) {
  print("$arr");
}
