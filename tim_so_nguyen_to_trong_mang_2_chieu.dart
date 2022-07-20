import 'dart:io';

void main() {
  print("row:");
  int row = int.parse(stdin.readLineSync()!);
  print("column:");
  int col = int.parse(stdin.readLineSync()!);
  List arr = List.generate(
      row, (_) => List.generate(col, (_) => int.parse(stdin.readLineSync()!)));
  print("print matrix:");
  printPrime(arr, row, col);
  //printMatrix(arr, row);
}

// void printMatrix(List arr, int row) {
//   for (int i = 0; i < row; i++) {
//     print("${arr[i]}");
//   }
// }

bool isPrime(int n) {
  if (n < 2) {
    return false;
  }
  //int squareRoot = int. sqrt(n);
  int i;
  for (i = 2; i < n; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

void printPrime(List arr, int row, int col) {
  for (var i = 0; i < row; i++) {
    for (var j = 0; j < col; j++) {
      if (isPrime(arr[i][j])) {
        print("${arr[i][j]}");
      }
    }
  }
}
