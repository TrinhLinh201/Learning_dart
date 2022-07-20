import 'dart:io';
import 'dart:math';

void main() {
  int row = 3, col = 3;
  List arr = List.generate(
      row, (_) => List.generate(col, (_) => int.parse(stdin.readLineSync()!)));
  print("print matrix:");
  printPrime(arr, row, col);
}

bool isPrime(int n) {
  if (n < 2) {
    return false;
  }

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
