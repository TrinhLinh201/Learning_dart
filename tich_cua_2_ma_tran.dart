import 'dart:io';

void main() {
  print("row:");
  int row = int.parse(stdin.readLineSync()!);
  print("column:");
  int col = int.parse(stdin.readLineSync()!);
  print("Matrix 1:");
  List arr1 = List.generate(
      row, (_) => List.generate(col, (_) => int.parse(stdin.readLineSync()!)));
  print("Matrix 2:");
  List arr2 = List.generate(
      row, (_) => List.generate(col, (_) => int.parse(stdin.readLineSync()!)));
  print("print matrix:");
  List arr3 = [];
  multiply2Matrix(arr1, arr2, arr3, row, col);
  printMatrix(arr3, row);
}

void printMatrix(List arr, int row) {
  for (int i = 0; i < row; i++) {
    print("${arr[i]}");
  }
}

void multiply2Matrix(List arr1, List arr2, List arr3, int row, int col) {
  for (int i = 0; i < row; i++) {
    for (int j = 0; j < col; j++) {
      arr3[i][j] = 0;
      for (int k = 0; k < col; k++) {
        arr3[i][j] += arr1[i][k] * arr2[k][j];
      }
    }
  }
}
