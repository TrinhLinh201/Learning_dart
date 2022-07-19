import 'dart:io';

void main() {
  List<int> arr = [];
  int n = 8;

  nhapMang(arr, n);
  print("${tongMang(arr)}");
}

void nhapMang(List<int> arr, int n) {
  for (int i = 0; i < n; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }
}

int tongMang(List<int> arr) {
  int sum = 0, i = 0;
  while (i < arr.length) {
    sum += arr[i];
    i++;
  }
  return sum;
}
