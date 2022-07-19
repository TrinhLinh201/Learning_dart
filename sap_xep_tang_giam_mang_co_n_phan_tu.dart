import 'dart:io';

void main() {
  List<int> arr = [];
  int n = 8;

  nhapMang(arr, n);
  sapXepGiamDan(arr);
  inMang(arr);
  sapXepTangDan(arr);
  inMang(arr);
}

void nhapMang(List<int> arr, int n) {
  for (int i = 0; i < n; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }
}

void sapXepTangDan(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    for (int j = i; j < arr.length; j++) {
      if (arr[i] < arr[j]) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
}

void sapXepGiamDan(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    for (int j = i; j < arr.length; j++) {
      if (arr[i] > arr[j]) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
}

void inMang(List<int> arr) {
  print("$arr");
}
