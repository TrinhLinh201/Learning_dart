import 'dart:io';

void main() {
  List<List<int>> arr = [[]];
  int n = 3, m = 4;
  nhapMang2Chieu(arr, n, m);
  inxMang2Chieu(arr, n, m);
}

void nhapMang2Chieu(List<List<int>> arr, int n, int m) {
  List<int> arr2 = [];
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      arr2.add(int.parse(stdin.readLineSync()!));
    }
    arr.add(arr2);
    arr2.clear();
  }
}

void inxMang2Chieu(List<List<int>> arr, int n, int m) {
  List<int> arr2 = [];
  for (int i = 0; i < n; i++) {
    arr2 = arr[i];
    for (int j = 0; j < m; j++) {
      if (arr2[j] < 5) {
        print("${arr[j]}");
      }
    }

    arr2.clear();
  }
}

void inMang2Chieu(List<List<int>> arr) {
  print("$arr");
}
