import 'dart:io';

void main() {
  List<int> arr = [];
  int n, x;
  print("nhap n:");
  n = int.parse(stdin.readLineSync()!);
  print("nhap X:");
  x = int.parse(stdin.readLineSync()!);
  inputArray(arr, n);
  print("${countX(arr, x)}");
}

void inputArray(List<int> arr, int n) {
  for (int i = 0; i < n; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }
}

int countX(List<int> arr, int x) {
  int dem = 0;
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] == x) {
      dem++;
    }
  }
  return dem;
}
