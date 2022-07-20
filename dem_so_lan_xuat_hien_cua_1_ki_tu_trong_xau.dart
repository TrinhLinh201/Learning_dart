import 'dart:ffi';
import 'dart:io';

void main() {
  List<Char> arr = [];
  String str, x;
  print("input string:");
  str = stdin.readLineSync()!;
  print("character:");
  x = stdin.readLineSync()!;
  print("number of occurrences of x:${countX(str, x)}");
}

int countX(String str, String x) {
  int dem = 0;
  for (var i = 0; i < str.length; i++) {
    if (str[i] == x) {
      dem++;
    }
  }
  return dem;
}
