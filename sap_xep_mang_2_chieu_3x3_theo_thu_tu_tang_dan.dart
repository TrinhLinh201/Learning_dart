import 'dart:io';

void main() {
  List arr2 = [];
  int row = 3, col = 3;
  List arr = List.generate(
      row, (_) => List.generate(col, (_) => int.parse(stdin.readLineSync()!)));
  print("print matrix:");
  sort(arr, row, col);

  printMatrix(arr, row);
}

void sort(List arr, int row, int col) {
  List arr2 = [];
  for (var i = 0; i < row; i++) {
    for (var j = 0; j < col; j++) {
      arr2.add(arr[i][j]);
    }
  }
  int count = 0;
  arr2.sort();
  for (var i = 0; i < row; i++) {
    for (var j = 0; j < col; j++) {
      arr[i][j] = arr2[count];
      count++;
    }
  }
}

void printMatrix(List arr, int row) {
  for (int i = 0; i < row; i++) {
    print("${arr[i]}");
  }
}
